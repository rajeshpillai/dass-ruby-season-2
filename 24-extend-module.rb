module  Module1
  p self

  def hello 
    puts "Hello again"
  end

  def welcome
    puts "Welcome to module 1"
    puts self  #observe this
  end

  def self.goodbye 
    puts "See you later !!"
  end
end

class MyClass 
  extend Module1  # adds to the class
  include Module1 # adds to the instance

  Module1.goodbye
end

MyClass.welcome
# MyClass.new.welcome
# inst = MyClass.new  
# inst.welcome 

# MyClass.new.welcome 
# MyClass.welcome 

Module1.goodbye
# MyClass.new.goodbye 
# MyClass.goodbye



