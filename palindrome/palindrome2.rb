#!/usr/bin/env ruby
# palindrome2.rb

##
# Gives every <b>String</b> the ability to indetify whether it is a palindrome. This version ignores all non-alphabetic characters, making it suitable for longer text items.

class String

    DUAL_CASE_ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

    ##
    # Constrast this with some other languages, involving iterating through each string index and comparing with the same index from the opposite end. Takes 1 optional Boolean, which indicates whether case matters. Assumed to be true.

    def palindrome?(case_matters=true)
        letters_only(case_matters) == letters_only(case_matters).reverse
    end

    private

    def letters_only(case_matters=false)
        just_letters = split('').find_all do |char|
        end.join('')
        return just_letters if (case_matters)
        return just_letters.downcase
    end

end

