require_relative "qtest"


describe "some examples" do 
  it "can pass" do 
    # actual == expected
    (1 + 1).should == 2
  end

  it "can fail" do
    (1 + 1).should == 3
  end

  it "can pass after failing" do 
  end
end


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

