=begin
Welcome.

In this kata you are required to, given a string, replace every letter with its position in the alphabet.

If anything in the text isn't a letter, ignore it and don't return it.

"a" = 1, "b" = 2, etc.

Example
alphabet_position("The sunset sets at twelve o' clock.")
Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" ( as a string )
=end

=begin
P:
  Input: string
  Output: string

  Requirements:
    - Given a string
    - Replace every letter with its position in the alphabet (a = 1, b = 2 ...)
    - If anything in the text isn't a letter, ignore it and don't return it

A:
  - Initialize a hash with letters as keys and numbers as values
  - Scan the string for only alpha characters
  - Convert the string into an array and iterate through it 
  - Fetch each letter's associated value from the Hash
  - Join array into a string and return it
=end

ALPHA_NUMS = ("a".."z").zip(1..26).to_h
ALPHA_NUMS = ("a".."z").each.with_index(1).to_h

def alphabet_position(string)
  string.downcase.scan(/[A-Z]/i).map { |char| ALPHA_NUMS[char] }.join(' ')
end

# test_str = "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
# p alphabet_position("The sunset sets at twelve o' clock.") == test_str
# p alphabet_position("-.-'") == ""

