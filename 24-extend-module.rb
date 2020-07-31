module  Module1
  p self

  def hello 
    puts "Hello again"
  end

  def welcome
    puts "Welcome to module 1"
    puts self  #observe this
  end
end

class MyClass 
  extend Module1  # adds to the class
  include Module1 # adds to the instance
end

MyClass.welcome
# MyClass.new.welcome
inst = MyClass.new  
inst.welcome 