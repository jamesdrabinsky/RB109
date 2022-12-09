=begin
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.
=end

=begin
P:
  Input: string
  Output: hash

  Requirements:
    - Given a string
    - Return a hash with the % of lowercase, uppercase and neither in the string

A:
  - Initialize a hash
  - Use #count to count the number of each uppercase/lowercase/neither characters and assign each to a key in the hash
  - Divide each value (fdiv) by the length of the string (no spaces)
=end

def letter_percentages(string)
  hash = {}

  hash[:lowercase] = string.count("a-z")
  hash[:uppercase] = string.count("A-Z")
  hash[:neither] = string.count("^A-Za-z")

  hash.transform_values { |v| 100 * v.fdiv(string.size) }
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }