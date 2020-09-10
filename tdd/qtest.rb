def describe (desc, &block)
  puts desc.upcase 
  block.call
end


GREEN = "\e[32m"
RED   = "\e[31m"
RESET = "\e[0m"

def it (desc, &block) 
  begin 
    $stdout.write "  - #{desc}"
    result = block.call 
    puts " #{GREEN}(ok)#{RESET}"
  rescue Exception => e 
    puts "#{RED}(fail)#{RESET}"
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