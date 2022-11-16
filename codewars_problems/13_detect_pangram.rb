# Detect Pangram
=begin 
A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The
quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).
Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.
=end

=begin
P:
  Input: string
  Output: boolean

  Explicit requirements:
     - Given a string
     - Return true if it uses letters A-Z at least once

D:
  Input: string
  Output: boolean

A:
  - Iterate through list of characters a-z
  - Check if all characters have a count > 0 in the lowercase version of the string argument
=end

def panagram?(string)
  ('a'..'z').all? { |letter| string.downcase.count(letter) > 0 }
end

p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false
