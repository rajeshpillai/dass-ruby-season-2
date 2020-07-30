def describe (desc, &block)
  puts desc.upcase 
  block.call
end

def it (desc, &block) 
  result = block.call 
  if result 
    puts "     #{desc.ljust(40, '.')} passed"
  else
    puts "     #{desc.ljust(40, '.')} failed"
  end
end

def is_equal(expected, actual)
  expected == actual   # true or false
end