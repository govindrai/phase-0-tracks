# Checks if year is consistent with age
def checkYear(age,year)
    return (2017-age) == year
end

puts "How many applicants are being processed?"
num_of_applicants = gets.chomp.to_i

while num_of_applicants != 0 do
    puts "What is your name?"
    name = gets.chomp

    puts "How old are you?"
    age = gets.chomp.to_i

    puts "What year were you born?"
    year = gets.chomp.to_i

    puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
    garlic = gets.chomp

    puts "Would you like to enroll in the company's health insurance? (Y/N)"
    enroll = gets.chomp

    puts "Please list all allergies. Type 'done' when finished."
    allergies = []
    allergy = gets.chomp
    allergies.push(allergy)

    while allergy != 'done' do
        allergy = gets.chomp
        if allergy == 'sunshine'
            sunshine = true
            break
        end
        allergies.push(allergy)
    end

    correct_age = checkYear(age,year)
    garlic = garlic == 'Y'
    enroll = enroll == 'Y'

    if !sunshine
        if correct_age && (garlic || enroll)
            result = "Probably not a vampire"
        end

        if !correct_age && (!garlic || !enroll)
            result = "Probably a vampire"
        end
    else
        result = "Probably a vampire"
    end

    if !correct_age && !garlic && !enroll
        result = "Almost certainly a vampire"
    end

    if name == 'Drake Cula' || name == 'Tu Fang'
        result = 'Definitely a vampire'
    end

    if result
        puts "Result: #{result}"
    else
        puts "Results inconclusive"
    end

    num_of_applicants -= 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."