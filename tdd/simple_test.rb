require_relative "qtest"


describe "some examples" do 
  it "can pass" do 
    # actual == expected
    (1 + 1).should == 2
  end

  # it "can fail" do
  #   (1 + 1).should == 3
  # end
end

# New rspec like syntax
describe "expectations" do 
  it "1. can expect values" do 
    # expect(1 + 1).to(eq(2))
    expect(1 + 1).to eq 2
  end

  it "2. can expect exceptions" do 
    # Pass block to expect
    expect do 
      raise ArgumentError.new
    end.to raise_error(ArgumentError)
  end
end


class SimpleTest
  #macro methods ruby
  describe "Basic test"  do 
    it "1 + 1 = 2"  do 
      is_equal 2, 1 + 1
    end

    it "1 + 2 =  4" do 
      is_equal 4, 1 + 2
    end
  end
end

