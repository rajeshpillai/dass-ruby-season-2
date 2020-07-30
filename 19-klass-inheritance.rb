require 'digest'

module Encryption
  CONFIG=["a","b","c"]

  def encrypt (str)
    # encryption logic
    Digest::SHA2.hexdigest(str)
  end

  def decrypt (estr)
    # encryption logic
    estr 
  end
end


class Person
  include Encryption

end

# p Globals::CONFIG

rajesh = Person.new 

# p rajesh 
# p rajesh.encrypt("secret_message")


# Inheritance

class Animal
  include Encryption

  def eat  
    puts "I am hungry"
  end

  def walk 
    puts "I am strolling..."
  end
end

class Cat < Animal 

end

class Dog < Animal 
  p self
  def initialize
  end

  def walk 
    p self
    puts "Hmm.. not in mood!!"
    super  # parent method
  end
end 

# cat1 = Cat.new 
# cat1.eat 
# cat1.walk 

dog1 = Dog.new 
dog1.eat 
dog1.walk 


p dog1.encrypt("bow bow")









