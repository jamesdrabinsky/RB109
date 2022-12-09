# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

=begin
P:
  Input: string
  Output: string

  Requirements:
    - Given a string
    - Return the character that occurs least often in the string.
    - If there are multiple characters with the equal lowest nunber of occurences, return the one that appears first in the string
    - Consider the uppercase and lowercase versions to be the same

D:
  Intermediate: hash

A:
  - Initialize a hash which will contain uppercase letter as keys and arrays as values.  Each array will contain the occurences of that character (case insensitive).
     - Convert the string to an array and iterate through it.
      - Add the character to the array of its corresponding uppercase key in the hash

  - Sort the hash by the arrays with the shortest lengths
  - If there are multiple arrays with the shortest length, then select the key that occurs first in the string
=end

def least_common_char(string)
  hash = Hash.new { |h, k| h[k] = [] }

  string.chars.each do |char|
    hash[char.upcase] << char
  end
  
  min = hash.values.min_by(&:size)[0].downcase
end

def least_common_char(string)
  hash = Hash.new(0)

  string.chars.each do |char|
    hash[char.upcase] += 1
  end

  hash.min_by { |_, v| v }[0].downcase
end

# Examples:

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'