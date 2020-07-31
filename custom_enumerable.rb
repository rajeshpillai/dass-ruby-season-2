module CustomEnumerable
  def map(&block) 
   result = []
   each do |ele|
     result << block.call(ele)
   end
   result
  end

  # find method
  def find (&block)
   result = nil 
   found = false 
   
   each do |element| 
     if block.call(element) 
       result = element
       found = true
       break 
     end
   end
   found ? result : nil
  end

end