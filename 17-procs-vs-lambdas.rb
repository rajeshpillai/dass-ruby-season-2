# procs don't care about missing arguments but
# lambdas do

some_proc = Proc.new { |name, age| "Your name is #{name} and age is #{age}" }

p some_proc.call("Cat", 22)

p some_proc.call("Dog")


some_lambda = lambda { |name, age| "Your name is #{name} and age is #{age}" }

p some_lambda.call("Tiger", 32)

#  p some_lambda.call("Tiger")


# Second difference is in the return values

def diet 
  status = lambda { return "You gave in!!"}
  status.call 
  "You completed the diet!!!"
end

result = diet 
p result 


def dietp 
  status = Proc.new { return "You gave in!!"}
  status.call 
  "You completed the diet!!!"
end

result2 = dietp
p result2






















