def hug (message, config, &block)
  puts message, config
  p block
  puts "{"
  block.call #if block_given?
  puts "}"
end

hug "hello", "a" do 
  puts "Thanks!!"
end

def sum (*args, &block)
  p  &block
  p block
  puts "{"
  block.call if block_given?
  puts "}"
end

sum 1, 2, 3, 4 do 
  puts "Sum completed"
end


def bye (&block)
  p &block
  p block
  block.call #if block_given?
end

bye do 
  puts "bye!"
end


