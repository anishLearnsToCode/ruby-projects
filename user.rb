class User
  attr_accessor :name, :email

  def initialize(name, email)
    self.name = name
    self.email = email
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