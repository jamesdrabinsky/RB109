=begin
In this kata you are required to, given a string, replace every letter with its position in the alphabet.
If anything in the text isn't a letter, ignore it and don't return it.
"a" = 1, "b" = 2, etc.
Example
alphabet_position("The sunset sets at twelve o' clock.")
Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)
=end

=begin
P:
  Input: string
  Output: string

  Requirements:
    - Given a string 
    - Return a string containing a number representing each letter's position in the alphabet
    - If anything in the text isn't a letter, ignore it and don't return it.
    - "a" = 1, "b" = 2, etc.

D:
  Intermediate: hash

A:
  - Initialize a hash `ALPHA_VALUES` containing each letter with its position in the alphabet
  - Convert the string into an array of characters (`#chars`) and iterate through the Array
    - Get each character's hash value in `ALPHA_VALUES`
  - Convert the returned array into a string with a " " delimiter between each number
=end

ALPHA_VALUES = ('a'..'z').map.with_index(1).to_h

def alphabet_position(string)
  alpha_chars = string.downcase.chars.select { |char| char =~ /[a-z]/i }
  alpha_chars.map { |char| ALPHA_VALUES[char] }.join(' ')
end

def alphabet_position(string)
  string.chars.map { |char| ALPHA_VALUES[char] }.select { |char| char.is_a?(Integer) }.join(' ')
end

answer_1 = "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5
15 3 12 15 3 11"

p alphabet_position("The sunset sets at twelve o' clock.") #== answer_1
p alphabet_position("-.-'") == ""