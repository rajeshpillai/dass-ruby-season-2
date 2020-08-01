# • Get the current value of the counter.
# • Increment the counter.
# • Decrement the counter.

# This is the essence of what most classes do: retrieve and modify data. Here’s
# one possible implementation of a Counter class:

class Counter
	def initialize
		@x = 0
	end

	def get_x
		@x
	end
	
	def incr
		@x += 1
	end
	
	def decr
		@x -= 1
	end
end

# counter = Counter.new 

# p counter.incr 
# p counter.incr
# p counter.incr

# p counter.decr 

# counter lambda
counter = lambda do 
  x = 0     # local variable
  get_x = lambda { x }
  incr  = lambda { x += 1}
  decr  = lambda { x -= 2}

  {get_x: get_x, incr: incr, decr: decr}
end

# Lambda usage
cl = counter.call 

p cl 

p cl[:incr].call 
p cl[:incr].call 
p cl[:incr].call 

p cl[:decr].call 



