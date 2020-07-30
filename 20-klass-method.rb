class User
  
  def self.setup 
    p self 
    "I am setting myself up..."
  end

  def login 
    p self 
    "I am logging into the system"
  end

end


user1 = User.new # new is a class Method

p user1.login 

p User.setup
