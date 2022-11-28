=begin
Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.
=end

=begin
P:
  Input: 2 strings
  Output: string

  Explicit requirements:
    - Given two strings
    - Return the shortest string + longer string + shorter string

D:
  Input: 2 strings
  Intermediate: array
  Output: string

A:
  - Initialize two variables - short, long - which will be equal to the 
  shortest and longest string, respectively.
  - Concatenate short to long and then concenate the returned string to short.
  - Return the new string
=end

def short_long_short(string_1, string_2)
  short, long = [string_1, string_2].sort_by(&:size)
  short + long + short
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"