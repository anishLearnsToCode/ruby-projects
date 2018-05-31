module Destructable
  def destroy(object)
    puts 'I am going to destroy the object'
  end

  def self.do_task
    puts 'static method declaration in the module'
  end
end

class User2
  include Destructable
  attr_accessor :first_name, :last_name, :email

  def initialize(first_name)
    @first_name = first_name
  end

  def run
    puts "#{first_name} is running"
  end

  def to_s
    first_name + ' ' + last_name
  end
end

anish = User2.new('Anish')
anish.run
anish.destroy(anish)

Destructable.do_task