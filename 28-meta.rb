module Reader
  def myattr_accessor(*attrs)
    attrs.each do |attr|
      define_method(attr) {
        instance_variable_get("@#{attr}")
      }

      define_method("#{attr}=") {
        |val|
        instance_variable_set("@#{attr}", val)
      }
    end
  end
end

class User  
    extend Reader
  p self 
  myattr_accessor :username, :password , :email


  def initialize
    @username = "user1"
    @password = "password1"
  end

  def display
    puts @username
    puts @password
  end
end

user = User.new 
user.display
user.username = "somethingelse"

user.display