# function, method, proc

my_proc = proc do 
  age = 10
  puts "I am in a proc"
end

puts "Will it run!!"

# Execute the proc
my_proc.call

# how hug method works
def hug 
  puts "{"
  yield if block_given?
  puts "}"
end

# without block
hug    # or hug()

# with block
hug do
  # any valid ruby code
  puts "Thank You"
end

hug {
  # any valid ruby code
  puts "Thank You again!"
}









