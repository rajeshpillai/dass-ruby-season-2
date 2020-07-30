
x = [1, 2, 3]

p x.class 

p x 

p x[1]   # 1st element 

age = Array.new(3)  # 3 empty array, nil 

p age 

# [1, 2], I want repeat this 3 times
# [[1,2],[1,2]]

pair = Array.new(3, [1, 2])
p pair 

p pair[1][1]  # grab the first element


name = %w[Ruby JavaScript Python]
p name

# array destructuring
# multiple variable assignment

a, b = [1, 2 ]

puts a  # 1
puts b # 2


# Pop the first items from the array
# * -> splat operator
first, *rest = [1,2,3,4,5]

p first 
p rest 

# Get the first item, and ignore the rest
# first, * = [1,2,3,4,5]

# Pop the last item
*prefix,  last = [1,2,3,4,5]
p prefix 
p last 

# get the first and last n items of an array
first, *rest,   last = [1,2,3,4,5] 
p first 
p last 
p rest 

#Intellegitnly coerce objects into array

x = *"hi ruby"  # => ["hi ruby"]
p x 


















