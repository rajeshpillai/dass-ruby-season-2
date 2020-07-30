class Gadget 
  attr_accessor :available, :make
  attr_reader :id 
  attr_writer :secret 


  # constructor
  def initialize(type = "electronic", name)
    # instance variables are private
    @type = type
    @name = name
    @available = true
    @id = rand(1..1000)
  end

  # default publicy
  
  def type 
    @type
  end

  # Getter
  def name 
    @name
  end

  # Setter for name
  def name=(value)
    @name = value
  end

  
  # overide to_s
  def to_s 
    "Gadget #{@type} and name is #{@name}"
  end

end

p Gadget.class 

p Gadget.superclass 

p Gadget.superclass.superclass

# Instances

phone = Gadget.new("electronics", "nokia phone")
laptop = Gadget.new("electronics", "acer") 

# p phone 
# p laptop

# p phone.to_s

# p phone.is_a? (Gadget)
# p phone.is_a? (Object)
# p phone.is_a? (BasicObject)

# p phone.methods.sort


p phone.to_s 
p laptop.to_s

p phone.type 
p phone.name 

phone.name = "Oppo"
p phone.available
phone.available = false 

laptop.make = "Dell"
p laptop
p phone 

laptop.id = "7777"
