# Number Ranges can be represented as (a..b) from a to b
# arrays from ranges can be created using the to_a method on the range

number_array = (1..20).to_a
p number_array
p number_array.shuffle
p number_array

# For the shuffle method to act on the origional array, we have to use the ! (bang operator)
number_array.shuffle!
p number_array

# To iterate over the array we use iterator
new_array = [] # Creating empty array
number_array.each{|element| new_array.push(element.odd?)}
p new_array

# Another way to iterate over the array is using the for (foreach) loop
mod_array = [] # creating empty array
for element in number_array
  mod_array.push(element % 4)
end
p mod_array