puts "What is your hamster's name?"
name = gets.chomp

puts "Tell me #{name}'s noise level (1-10)"
volume = gets.chomp

puts "What is #{name}'s' fur color?"
fur_color = gets.chomp

puts "Is #{name} a good candidate for adoption? (Y/N)"
canditate_type = gets.chomp

puts "Approximately how old is #{name}"
age = gets.chomp

if age == ''
    age = nil
end

# puts(name,volume,fur_color,canditate_type,age)




