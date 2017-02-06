# PSUEDOCODE
# Get the user input
# Store the user input into a hash
# print the hash
# in a loop,
#     ask for an existing key and a new value
#     update the existing key with the new value
# print the new hash

puts "Hello there. We need a few pieces of information to better serve you."

puts "What is you name?"
name = gets.chomp

puts "Thanks #{name}. How old are you?"
age = gets.chomp.to_i

puts "How many children do you have?"
num_children = gets.chomp.to_i

puts "Please tell us your decor theme"
decor_theme = gets.chomp

designer_preferences = {
    name: name,
    age: age,
    num_children: num_children,
    decor_theme: decor_theme
}

puts "Here's a summary of the information you just entered: "
puts designer_preferences

puts "Would you like to update any information? Type the name of the information you'd like to update or 'none' to skip."

loop do
    update_key = gets.chomp
    break if update_key == "none"
    puts "What would you like to update #{update_key} to?"
    update_value = gets.chomp
    designer_preferences[update_key.to_sym] = update_value
    puts "What else would you like to update? Type 'none' to exit."
end

puts "Here are your updated preferences: "
puts designer_preferences