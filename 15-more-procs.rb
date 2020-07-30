

# map => number of input and number of output
# will match

p ["1", "2", "3", "4"].map { |number| number.to_i }

# :to_id => proc => using & => convert it to block
p ["1", "2", "3", "4"].map(&:to_i)

p [1, 2, 3, 4].select { |number| number.even? }
p [1, 2, 3, 4].select(&:even?)

# Odd number 

