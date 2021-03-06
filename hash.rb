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

# Deleting a <key, value> pair in the hash
symbol_hash.delete(:year_string)
puts symbol_hash[:year_string]

# Iterating over the has using each method
symbol_hash.each {|key, value| puts key.to_s + ' : ' + value.to_s}

# Creating a new hash that contains only numbers
number_hash = {} # created an empty hash
(1..5).each {|number| number_hash["str#{number}"] = number}
p number_hash

number_hash.each {|key, value| number_hash.delete(key) if value > 3}
p number_hash

# Creating a numbers hash using symbols
numbers_symbol_hash = {
    a: 1,
    b: 2,
    c: 3,
    d: 5,
    e: 10
}
p numbers_symbol_hash
selected_hash = numbers_symbol_hash.select {|key, value| value >= 5}
p selected_hash