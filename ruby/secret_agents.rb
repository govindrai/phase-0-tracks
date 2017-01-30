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
    puts encrypted_string
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
    puts decrypted_string
end

encrypt("abc") # should return "bcd"
encrypt("zed") # should return "afe"
decrypt("bcd") # should return "abc"
decrypt("afe") # should return "zed"