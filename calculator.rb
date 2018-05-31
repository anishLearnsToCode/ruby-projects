def add(number1, number2)
  number1.to_f + number2.to_f
end

def multiply(number1, number2)
  number1.to_f * number2.to_f
end

def divide(divisor, dividend)
  dividend.to_f / divisor.to_f
end

def subtract(number1, number2)
  number1 - number2
end

puts 'Enter the operator you wish to use ?'
puts '1) Add'
puts '2) Subtract'
puts '3) Multiply'
puts '4) Divide'
choice = gets.chomp.to_i

puts'Enter first Number : '
number1 = gets.chomp.to_f

puts 'Enter second number : '
number2 = gets.chomp.to_f

if choice == 1
  puts add(number1, number2)
elsif choice == 2
  puts subtract(number1, number2)
elsif choice == 3
  puts multiply(number1, number2)
elsif choice == 4
  puts divide(number1, number2)
else
  puts 'wrong choice'
end