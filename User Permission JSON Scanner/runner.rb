require_relative 'user'
require 'pp'

anish = User.new('Anish', 'anish_@outlook.com')
pp anish
anish.save