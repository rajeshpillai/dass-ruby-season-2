# private method in ruby is like protected method
# in java/c++

# private method doesn't have a explicit receiver

$everywhere = "I am global"

class Test1
  # class level variable
  @@count = 1

  # accessor method for class variable
  def self.count 
    @@count 
  end

  # methods are public 
  def main_method1
    puts "In the main method"
    method_private

    p $everywhere
  end

  def main_method2

  end

  def method1  
  end

  def method2 

  end

  def compare (other_object)
    puts "#{self.class} is compared with #{other_object.class}"

    # puts other_object.test2private
    p other_object
    puts other_object.test2protected
    
  end

  private
  def test2private
    puts "test2private"
    p $everywhere
  end 

  def method_private 
    puts "Inside method private for #{self.class}"
  end

  def method_private1
    puts "Inside method 1 private for #{self.class}"
  end

  # public 
  # def pub1 
  # end

  protected
  def greet
    puts "Good morning!!"
  end

  # private :method1, :method2
  # protect :somethod1, :somemethod2
end

# Test 2 class
class Test2 < Test1 
  @@count = 2
  def main_method3 
    greet
    method_private1
  end

  protected
  def test2protected 
    puts "test2 protected"
  end

  private 
  def test2private 
    puts "test2 private"
  end
end

class Test3 < Test2

  def compare2 (other_object)
    other_object.test2protected
  end

end


# Test code 

# Test1.new.main_method1()  # paren is optional
# Test1.new.method_private1
# Test1.new.method_private

# Test1.new.greet  # error

# Test2.new.main_method3  # should work


# t1 = Test1.new 
# t2 = Test2.new 
# t3 = Test3.new 

# t1.compare(t2) 

#t3.compare2(t2)


p Test1.count
p Test2.count 



