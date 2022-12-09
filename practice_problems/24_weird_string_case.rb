=begin
Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased and you need to start over for each word.

The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').

weirdcase( "String" )#=> returns "StRiNg"
weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"
=end

=begin
P:
  Input: string
  Output: string

  Requirements:
     - Given a string
     - Return the same string with all even-indexed letters upper cased
     and all odd-indexed letters lower cased

D:
  Intermediate: Array

A:
  - Convert the string into an array (#split) and iterate through it
     - Iterate through a range from 0 to the current string size (non-inclusive)
     - Reassign each even-indexed character to upper case self
     - Reassign each odd-indexed character to its lower case self
  - Join the array elements into a string with a " " delimiter and return the string
=end

# def weirdcase(string)
#   arr = []
#   string.split.each do |word|
#     (0...word.size).each do |idx|
#       if idx.even?
#         word[idx] = word[idx].upcase
#       else
#         word[idx] = word[idx].downcase
#       end
#     end
#     arr << word
#   end
#   arr.join(' ')
# end

# def weirdcase(string)
#   arr = []
#   string.split.each do |word|
#     word.chars.each_index do |idx|
#       if idx.even?
#         word[idx] = word[idx].upcase
#       else
#         word[idx] = word[idx].downcase
#       end
#     end
#     arr << word
#   end
#   arr.join(' ')
# end

def weirdcase(string)
  arr = string.split.map do |word|
    word.chars.map.with_index do |letter, idx|
      idx.even? ? letter.upcase : letter.downcase
    end
  end
  arr.map(&:join).join(' ')
end

# def weirdcase string
#   string.gsub(/(\w{1,2})/) { |s| $1.capitalize }
# end

p weirdcase('This') == 'ThIs'
p weirdcase('is') == 'Is'
p weirdcase('This is a test') == 'ThIs Is A TeSt'