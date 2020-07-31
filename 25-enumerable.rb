class Store  
  include Enumerable

  attr_reader  :snacks 

  def initialize 
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack  # push to array
  end

  # for enumeration
  def each 
    snacks.each do |snack|
      yield snack 
    end
  end
end

mumbai = Store.new  
mumbai.add_snack("Vada pav")
mumbai.add_snack("Samosa")
mumbai.add_snack("Pepsi")

p mumbai.snacks

p mumbai.first

p mumbai.map { |snack| snack.upcase }

p mumbai.select {|snack| snack.downcase.include?("v")}



