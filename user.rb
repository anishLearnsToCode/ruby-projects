class User
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def to_s
    self.name
  end
end

anish = User.new('Anish')
puts anish

puts User.ancestors