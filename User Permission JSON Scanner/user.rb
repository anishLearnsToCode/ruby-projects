require 'json'

class User
  attr_accessor :name, :email, :permissions

  def initialize(name, email)
    @name = name
    @email = email
    @permissions = User.get_permissions_from_file
  end

  def self.get_permissions_from_file
    file = File.read 'UserPermissions.json'
    JSON.load(file, nil, symbolize_names: true)
  end

  def save
    entry = {name: @name, email: @email, permissions: @permissions}.to_json
    open('users.json', 'a') do |file| # Here the 'a' refers to append mode
      file.puts entry
    end
  end

  def to_s
    self.name
  end
end