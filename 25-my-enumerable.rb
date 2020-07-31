require "byebug"

#require "./custom_enumerable"
require_relative "custom_enumerable"

class DataWrapper 
  include CustomEnumerable

  def initialize(*items) 
    @items = items.flatten
  end

  def each(&block) 
    @items.each(&block)  # proc -> converted to block
    #self 
  end
end

items = DataWrapper.new(1,2,3,4,5)

result = items.map do |e|
  e * 2
end
p result 

el = items.find do |element|
  element == 3
end


p el 

el = items.find { |e| e == 5}
p el 

p DataWrapper.ancestors




