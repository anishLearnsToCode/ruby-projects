city_codes = {
    'agartala' => 381,
    'agra' => 562
}
choice = true

while choice
  puts 'Please select a city : '
  city_codes.each do |key, value|
    puts key
  end
  city = gets.chomp

  puts city_codes[city]

  puts 'Do you wish to go again ?'
  again = gets.chomp

  case again
  when 'y' then choice = true
  when 'n' then choice = false
  else choice = false
  end

end