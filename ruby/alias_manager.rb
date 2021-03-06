# Psuedo code
# For each name
#     split the name
#     reverse the order
#     for each letter in the swapped name
#         if that letter is in the list of vowels
#             make that letter the next vowel
#         else if it is a consonant
#             make that letter the next consonant

def agent_spy_name (full_name)
    vowels = 'aeiou'
    alphabet = 'bcdfghjklmnpqrstvwxyz'

    # split the name by space, reverse the array, join it by a space and split it
    swapped_name = full_name.split(" ").reverse.join(" ").split("")

    uppercase = false

    swapped_name.map! do |letter|

        if letter == letter.upcase
            uppercase = true
            letter.downcase!
        end

        if vowels.include?(letter)
            vowel_index = vowels.index(letter)
            letter = vowels[(vowel_index + 1) % vowels.length]

        elsif alphabet.include?(letter)
            alphabet_index = alphabet.index(letter)
            letter = alphabet[(alphabet_index + 1) % alphabet.length]
        else
            letter
        end

        if uppercase
            letter.upcase!
            uppercase = false
        end

        letter
    end
    swapped_name.join("")
end

# puts agent_spy_name("Andrew Jackson")
# puts agent_spy_name("Felicia Torres")


def name_randomizer
    real_names = []
    secret_identities = []

    puts "Welcome to the Name Randomizer System. Type in a name to get a secret identity. First and Last Names only, please."

    input = gets.chomp

    while input != "quit"
        real_names.push(input)
        secret_identities.push(agent_spy_name(input))
        p secret_identities.last
        input = gets.chomp
    end

    real_names.length.times do |i|
        puts "#{secret_identities[i]} is actually #{real_names[i]}"
    end
end

name_randomizer