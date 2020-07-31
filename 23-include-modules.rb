module  Module1
  p self
  def welcome
    puts "Welcome to module 1"
    puts self  #observe this
  end
end


module Module2
  include Module1
end

class MyClass 
  include Module2
end

MyClass.new.welcome  