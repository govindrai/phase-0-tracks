require 'io/console'
class Hangman
    attr_reader :gameover

    def initialize(word)
        @gameover = false
        @word = word
        @word_length = @word.length
        @guesses = []
        @hidden_word = ("_ " * @word_length).chop
        @guesses_remaining = @word_length
        puts "You have #{@guesses_remaining} guesses to guess this word"
        puts @hidden_word
    end

    def guess(letter)
        # first check to see if the user has previously guessed the letter. if they haven't then add their guess to an array to keep track of guesses, otherwise tell them they've already guessed it and to try again. Note: User still has the same number of guesses if repeated guess
        if @guesses.include?(letter)
            puts "You've already guessed this letter. Try again."
            puts "Don't worry, you still have #{@guesses_remaining} guesses remaining."
            puts @hidden_word
            return
        else
            @guesses.push(letter)
            @guesses_remaining -= 1
            # p @guesses
        end

        # if the guess is a new letter, check whether the letter exists in the word. Use a variable ("match") to store the state of whether or not there was a match. If the letter exists, then update the hidden word string with the letter. Loop to get all occurrences of the letter
        match = false
        0..@word_length.times do |index|
            if letter == @word[index]
                match = true
                # need to multiply index by 2 because there is a space after every underscore to make underscores legible
                @hidden_word[index * 2] = letter
            end
        end

        # If the state of "match" never became true, let the user know that the letter does not exist in the hidden word. However, if the state of "match" became true, then first check to see if the word has been guessed correctly. If it is let them know they got it, and let them know the amount of guesses it took to guess it. Otherwise, just let them know they got a match.
        if !match
            puts "Sorry, #{letter} is does not exist in this word. Try again."
        else
            if @hidden_word.delete(' ') == @word
                puts "Congrats! You got it! It took you #{@word_length - @guesses_remaining} guesses"
                @gameover = true
                return
            else
                puts "Correct, #{letter} definitely exists in this word"
            end
        end

        # print the hidden word, if no match or match but not solved
        puts @hidden_word

        # If the word has not been guessed, then check for number of guesses remaining. If it's 0 then they lost the game and reveal the word. Otherwise let them know how many guesses they have remaining.
        if @guesses_remaining == 0
            puts "Unfortunately, you have 0 guesses left. The word was infact \"#{@word}\". GAME OVER."
            @gameover = true
        else
            puts "You have #{@guesses_remaining} guesses remaining"
        end
    end #end of guess method
end #end of hangman class


def play_hangman
    puts "Welcome to Hangman"
    puts "Player 1: Please enter a word"

    # Makes the input hidden so player 2 doesn't know what player 1 typed
    hangman = Hangman.new(STDIN.noecho(&:gets).chomp)

    # puts "Thanks, Player 1. Welcome, Player 2"
    while true
        hangman.guess(gets.chomp)
        break if hangman.gameover
    end
end

play_hangman