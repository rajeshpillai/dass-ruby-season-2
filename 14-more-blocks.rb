def myeach(arr)
  #yield arr[0]
  # 0..2
  0.upto(arr.length - 1) do |x|
    yield arr[x], x
  end
end

myeach [1,2,3] do |item, x|
  puts "printed"
  puts  item 
  puts x 
end

