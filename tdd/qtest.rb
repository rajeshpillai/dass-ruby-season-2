def describe (desc, &block)
  puts desc.upcase 
  block.call
end


def it (desc, &block) 
  begin 
    result = block.call 
  rescue Exception => e 
    puts e 
    puts e.backtrace
  end
end


# def it (desc, &block) 
#   result = block.call 
#   if result 
#     puts "     #{desc.ljust(40, '.')} passed"
#   else
#     puts "     #{desc.ljust(40, '.')} failed"
#   end
# end

def is_equal(expected, actual)
  expected == actual   # true or false
end

# Open class
class Object
  def should 
    ComparisonAssertion.new(self)
  end
end

class ComparisonAssertion
  def initialize (actual)
    @actual = actual
  end

  def ==(expected)
    unless @actual == expected
      raise AssertionError.new(
        "Expected #{expected.inspect} but got #{@actual.inspect}"
      )
    end
  end
end

class AssertionError < RuntimeError

end