require_relative "qtest"

class SimpleTest
  #macro methods ruby
  describe "Basic test"  do 
    it "1+1 = 2"  do 
      is_equal 2, 1 + 1
    end

    it "1 + 2 =  4" do 
      is_equal 4, 1 + 2
    end
  end
end

