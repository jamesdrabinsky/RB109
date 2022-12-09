=begin
Find the longest substring in alphabetical order.
Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
There are tests with strings up to 10 000 characters long so your code will need to be efficient.
The input will only consist of lowercase characters and will be at least one letter long.
If there are multiple solutions, return the one that appears first.
=end

=begin
P:
  Input: string
  Output: string

  Requirements:
    - Find the longest substring in alphabetical order
    - If there are multiple solutions, return the one that appears first

D:
  Intermediate: Array

A:
  - Initialize a variable `susbtrings` to any emptry list
  _ Initialize a variable `current_string` to an empty string

  - Iterate through a range from 0 to the string length (non-inclusive) |idx1|
    - Iterate through a range from idx1 to the string length (non-inclusive) |idx2|
      - Initialize a substring equal to string[idx1..idx2] (inclusive)
      - If the substring is equal to it's sorted self then add it to the `substrings` array
  - Sort the `substrings` array in descending order and select the first substring

  #####################
=end

def longest(string)
  substrings = []

  (0...string.size).each do |idx1|
    (idx1...string.size).each do |idx2|
      current_sub = string[idx1..idx2]
      substrings << current_sub if current_sub.chars == current_sub.chars.sort
    end
  end
  substrings.max_by(&:size)
end

# def longest(string)
#   string.chars.slice_when { |a, b| a > b }.max_by(&:size).join
# end

def longest(str)
  longest = ''
  current = '' 

  (0...str.size).each do |idx1| 
    current = str[idx1]
    (idx1 + 1...str.size). each do |idx2|
      break if current[-1] > str[idx2]
      current += str[idx2] 
    end
    longest = current if current.size > longest.size
  end
  longest
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'



