require 'json'

class User
  attr_accessor :name, :email, :permissions

  def initialize(name, email)
    @name = name
    @email = email
    @permissions = User.get_permissions_from_file
  end

  def self.get_permissions_from_file
  end

  def to_s
    self.name
  end
end