def goodmorning
  "Good morning"
end

def greeting (message)
  "You said #{message}"
end

def h(k, v) 
  v
end

p goodmorning()
p goodmorning


p greeting("hello")
puts "hello" "world"

puts h("name", "ruby")


# The last method overwrites
# all methods with same name
def one(p1)
  "hello2"
end

def one(p1, p2)
  "hello1"
end

p one(1,2) 

# Default parameters
def write (file, data, mode = "w") 
  mode 
end

p write("hello.txt", "abcd")
p write("hello.txt", "abcd","r+")



# Variable arguments

def sum (*args)
  result = 0
  args.each do |item|
    result = result + item
  end
  result 

end

def mult (*args)
  result = 1
  args.each {|item| result = result * item}
  result 
  
end


p sum(1,2,3,4,5)
p sum(1,2)

p mult(2,3)











