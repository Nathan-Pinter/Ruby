module Destructable
  def destroy(anyobject)
    puts "I will destroy an object"
  end
end

class User
  include Destructable #must be put in to access module Destructable
  
  attr_accessor :name, :email
  
  def initialize(name, email)
    @name = name
    @email = email
  end

#------------------------------------------ 
#attr_accessor :name replaces these methods  
#  def get_name
#    @name
#  end
  
#  def set_name=(name)
#    @name = name
#  end
#-------------------------------------------
  
  def run
    puts "Hey i'm running"
  end
  
  def self.identity_yourself
    puts "Hey i'm a class method"
  end
  
end

#inheritance (over rights run method in class User)
class Buyer < User
  def run 
    puts "Hey i'm not running, i'm in the Buyer class"
  end
end

class Seller < User
  
end

class Admin < User
  
end

#showing how to work with the user class
user = User.new("Nathan", "nathanpinter@gmail.com")
puts "My user's name is #{user.name} and his email is #{user.email}"
puts "What is your new name ? "
user.name = gets.chomp
puts "What is your new email address ?"
user.email = gets.chomp
puts "My user's new name is #{user.name} and your email is #{user.email}"

#printing the sub classes and showing inheritance
buyer1 = Buyer.new("Jon", "jon@gmail.com")
buyer1.run
seller1 = Seller.new("Seller", "seller@gmail.com")
seller1.run
admin1 = Admin.new("Admin", "admin@gmail.com")
admin1.run

puts User.identity_yourself #class method
puts user.destroy("myname") #module method