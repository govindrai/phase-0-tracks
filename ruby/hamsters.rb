puts "What is your hamster's name?"
name = gets.chomp.capitalize

puts "Tell me #{name}'s noise level (1-10)"
volume = gets.chomp.to_i

puts "What is #{name}'s' fur color?"
fur_color = gets.chomp

puts "#{name} a good candidate for adoption? (true/false)"
candidate_type = gets.chomp

puts "Approximately how old is #{name}"
age = gets.chomp

if age == ''
    age = nil
end

# puts(name,volume,fur_color,canditate_type,age)
puts("Name: #{name}\nNoise Level: #{volume}\nAge: #{age}\nFur Color: #{fur_color}\nAdoptable?: #{candidate_type}")



