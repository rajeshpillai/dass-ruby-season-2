empty_hash = {}

p empty_hash.class 

config = { "key1" => 1, "key2" => 2 }

p config 
p config["key1"]

# new way

settings = { key1: "key 1", key2: 2}

p settings 
p settings[:key1]  # symbol

# lets understand more

puts "Object id's"
p "ruby".object_id 
p "ruby".object_id 
p "ruby".object_id 

puts "Symbol object_id's"
p :ruby.object_id 
p :ruby.object_id 
p :ruby.object_id 

# more hash features
puts "Menus..."
menu = {burger: 3, tacos: 5, chips: 1}
p menu 
menu[:chips] = 2
p menu 

p menu[:coke]

p menu.fetch(:coke, "Default value") 

p menu.fetch(:coke, 1.2) 

# add new items to the hash
menu[:pepsi] = 2

# OR
menu.store(:laddoo, 10)

p menu 

# now coke is added to the menu
menu[:coke] = 2.2 

































