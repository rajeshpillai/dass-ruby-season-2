def describe (desc, &block)
  puts desc.upcase 
  block.call
end


GREEN = "\e[32m"
RED   = "\e[31m"
RESET = "\e[0m"


# Approach 1

# def it (desc, &block) 
#   result = block.call 
#   if result 
#     puts "     #{desc.ljust(40, '.')} passed"
#   else
#     puts "     #{desc.ljust(40, '.')} failed"
#   end
# end

# Approach 2
# def it (desc, &block) 
#   begin 
#     $stdout.write "  - #{desc}"
#     result = block.call 
#     puts " #{GREEN}(ok)#{RESET}"
#   rescue Exception => e 
#     puts "#{RED}(fail)#{RESET}"
#     puts e.backtrace
#     puts e 
#   end
# end


# Approach 3 - Style error message
# def it (desc, &block) 
#   begin 
#     $stdout.write "  - #{desc}"
#     result = block.call 
#     puts " #{GREEN}(ok)#{RESET}"
#   rescue Exception => e 
#     puts "#{RED}(fail)#{RESET}"
#     # puts e.backtrace.reverse
#     # format the output
#     puts [
#       "#{RED}Backtract:#{RESET}",
#       e.backtrace.reverse,
#       "#{RED}#{e}#{RESET}"
#     ].flatten.map {|line| "\t#{line}"}.join("\n")
#   end
# end


# Approach 4 - Let's put backtrace on its own line
def it (desc, &block) 
  begin 
    $stdout.write "  - #{desc}"
    result = block.call 
    puts " #{GREEN}(ok)#{RESET}"
  rescue Exception => e 
    puts "#{RED}(fail)#{RESET}"
    # puts e.backtrace.reverse
    # format the output
    puts [
      "#{RED}Backtract:#{RESET}",
      e.backtrace.reverse.map {|line| "#{RED}|#{RESET} #{line}"},
      "#{RED}#{e}#{RESET}"
    ].flatten.map {|line| "\t#{line}"}.join("\n")
  end
end


def is_equal(expected, actual)
  expected == actual   # true or false
end

# New feature
# def expect (actual) 
#   Actual.new(actual)
# end

# with block
def expect (actual=nil, &block) 
  Actual.new(actual || block)
end


def eq(expected) 
  Expectations::Equal.new(expected)
end

def raise_error(exception_class) 
  Expectations::Error.new(exception_class)
end

class Actual 
  def initialize(actual) 
    @actual = actual
  end

  def to(expectation) 
    expectation.run(@actual)
  end

end

class Expectations 
  class Equal 
    def initialize(expected) 
      @expected = expected
    end

    def run (actual) 
      unless actual == @expected
        raise AssertionError.new(
          "Expected #{@expected.inspect} but got #{actual.inspect}"
        )
      end   
    end
  end

  class Error 
    def initialize(exception_class) 
      @exception_class = exception_class
    end

    def run (actual_block) 
      begin 
        actual_block.call 
      rescue @exception_class
        return 
      rescue StandardError => e 
        raise AssertionError.new(
          format("Expected to see error %s, but saw %s",
              @exception_class.inspect,
              e.inspect)
        )
      end

      # raise if no exceptions
      # To test this:
      # from expectations: test 2: remove raise ArgumentError
      raise AssertionError.new(
        format("Expected to see error %s, but got nothing",
          @exception_class.inspect))
    end
  end
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