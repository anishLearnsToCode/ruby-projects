# Hash

my_details = {
    'first_name' => 'Anish',
    'last_name' => 'Sachdeva',
    'age' => 20,
    'favourite_color' => 'blue'
}

puts my_details['first_name']
puts my_details['favourite_color']
puts my_details['test']
my_details['test'] = 'test_value'

puts my_details['test']

# Hashes using symbols
symbol_hash = {
    firstName: 'Anish',
    lastName: 'Sachdeva',
    age: 20,
    favouriteColor: 'blue',
    university: 'DTU',
    :year => 3
}
puts symbol_hash
puts symbol_hash[:year]

symbol_hash[:year_string] = 'senior'
puts symbol_hash[:year_string]

symbol_hash[:grades_list] = [8.00, 7.33, 8.33, 8.14]
p symbol_hash[:grades_list]