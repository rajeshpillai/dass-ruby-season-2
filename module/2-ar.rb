module ActiveRecord
  class Base 
    def self.has_many (name, options)
      p [name, options]
    end

  end
end

class ApplicationRecord < ActiveRecord::Base
end

class User < ApplicationRecord
  attr_accessor :username, :password
  # def username 
  # end

  # def password
  # end

  # def username=(value)
  # end

  has_many :roles,  :dependent => :destroy
end

# User.has_many :admin,  :dependent => :destroy

user1 = User.new 

user1.username= "rajesh"
user1.password = "secret"

p user1
