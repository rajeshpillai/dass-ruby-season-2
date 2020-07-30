puts "Hi, what's your name?"
name = gets.chomp  # remove the newline

puts "What's your age?"

# convert string to integer
# age = gets.chomp.to_i   

age = gets.chomp
# Validating age (Should be number)
age = age.scan(/\d+/).map(&:to_i)[0]

puts "So, your name is #{name} and you are #{age} old."
