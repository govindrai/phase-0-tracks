puts "What is your name?"
name = gets.chomp.upcase

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
garlic = gets.chomp

puts "Would you like to enroll in the company's health insurance? (Y/N)"
enroll = gets.chomp


def checkYear(age,year)
    puts "Year is: #{year}"
    puts("Year should be: #{2017-age}")
    return (2017-age) == year
end

correct_age = checkYear(age,year)
garlic = garlic == 'Y'
enroll = enroll == 'Y'

if correct_age && (garlic || enroll)
    result = "Probably not a vampire"
end

if !correct_age && (!garlic || !enroll)
    result = "Probably a vampire"
end

if !correct_age && !garlic && !enroll
    result = "Almost certainly a vampire"
end

if name == 'Drake Cula' || name == 'Tu Fang'
    result = 'Definitely a vampire'
end

if result
    puts result
else
    puts "Results inconclusive"
end