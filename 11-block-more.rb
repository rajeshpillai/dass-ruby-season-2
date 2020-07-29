# Passing proc and block together


def abc(x, y, &b)
  puts x 
  y.call 
  b.call if block_given?
end


abc(5, proc { puts "I am a proc"}) do 
  puts "I am the block"
end


