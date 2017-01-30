# encrypt method
# for each letter of a string
#     if letter is not a space
#         advance that letter
#         add letter to a new string
#     else
#         add letter to a new string

# decrypt method
# for each letter of string
#     if letter is not a space
#         decrease that letter
#         add letter to a new string
#     else
#         add letter to a new string

def encrypt(str_to_encrypt)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    encrypted_string = ""
    for i in 0...str_to_encrypt.length do
        char = str_to_encrypt[i]
        if alphabet.include?(char)
            if char == 'z'
                encrypted_string += 'a'
            else
                letter_index = alphabet.index(char)
                encrypted_string += alphabet[letter_index + 1]
            end
        else
            encrypted_string += char
        end
    end
    return encrypted_string
end

def decrypt(str_to_decrypt)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    decrypted_string = ""
    for i in 0...str_to_decrypt.length do
        char = str_to_decrypt[i]
        if !alphabet.include?(char)
            decrypted_string += char
        else
            decreased_letter_index = alphabet.index(char)
            decrypted_string += alphabet[decreased_letter_index - 1]
        end
    end
    return decrypted_string
end

# p encrypt("abc") # should return "bcd"
# p encrypt("zed") # should return "afe"
# p decrypt("bcd") # should return "abc"
# p decrypt("afe") # should return "zed"

# # Nested method call both decrypt and encrypt take strings and encrypt returns a string
# p decrypt(encrypt('swordfish'))

puts "Would you like to encrypt or decrypt a password?"
encrypt_or_decrypt = gets.chomp

puts "What is the password that you would like to #{encrypt_or_decrypt}?"
password = gets.chomp

if encrypt_or_decrypt == 'encrypt'
    crypt_password = encrypt(password)
else
    crypt_password = decrypt(password)
end

puts "OK. Your #{encrypt_or_decrypt}ed password is #{crypt_password}."