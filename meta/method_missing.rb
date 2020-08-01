class Numeric
  @@currencies = {usd: 100, euro: 200}
  def method_missing (method_id, *args, &block)
    p method_id
  end
end


puts 3.usd 
puts 100.euro
p 100.helloworld

