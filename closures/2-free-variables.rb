
# let's create a lambda

# drawing_gag = lambda do |msg|
#   "hello"
# end

# javascript:
# function hello () {
#   return function () {
#   }
# }

drawing_gag = lambda do |msg|
  lambda do 
    prefix = "I will not"
    "#{prefix} #{msg}"
  end
end


# x = drawing_gag.call("draw a drawing")

inner_lambda = drawing_gag.call("draw a sketch")

p inner_lambda

p inner_lambda.call


