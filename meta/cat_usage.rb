class Object 
  def self.const_missing(c)
    puts "#{c} is missing. So, lets load it dynamically"
    require "./cat"
    Cat

  end
end

Dog
Cat.new.talk 