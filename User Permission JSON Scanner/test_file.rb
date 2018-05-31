require 'json'
require 'pp'

file = File.read('UserPermissions.json')
puts file

json_packet = JSON.load(file)
puts json_packet

entry_hash = {
    name: 'anish',
    email: 'anish_@outlook.com',
    permissions: json_packet
}
puts entry_hash
json_hash = entry_hash.to_json
puts json_hash

open('users.json', 'a') do |file|
  file.puts json_hash
end
