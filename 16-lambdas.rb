
squares_proc  = Proc.new { |number| number ** 2}
squares_lambda = lambda { |number| number ** 2}

p [1,2,3].map(&squares_proc)

p squares_proc.call(5) 

p squares_proc.call(10)
p [1,2,3].map(&squares_lambda)


# lambda shorthand
twice = -> (x) { 2 * x}

p twice.call(5)  # => 10 


# &para -> converts block to proc
# &methodcall -> proc to block 

