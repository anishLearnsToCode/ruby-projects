class User
  attr_accessor :name, :email

  def initialize(name, email)
    self.name = name
    self.email = email
  end

  def run
    puts 'I am running'
  end

  def self.static_method
    puts 'This is a static method'
  end

  def to_s
    'Name: ' + name + ' , Email: ' + email
  end
end

anish = User.new('Anish', 'test')
gautam = User.new('Gautam', 'test')
piyush = User.new('Piyush', 'test')

puts gautam
puts gautam.name
gautam.name = 'test'
puts gautam.name

puts
puts User.ancestors

class Buyer < User
  def run
    puts 'The buyer is running'
  end
end

class Seller < User
end

class Admin < User
end

buyer = Buyer.new('anish', 'test')
seller = Seller.new('John Doe', 'test mail')
admin = Admin.new('Jane Doe', 'outlook mail')

anish.run
buyer.run

puts Buyer.ancestors
User.static_method