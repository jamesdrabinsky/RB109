=begin
Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will need to be efficient.

The input will only consist of lowercase characters and will be at least one letter long.

If there are multiple solutions, return the one that appears first.

Good luck :)
=end

=begin
P:
  Input: string
  Output: string

  Requirements:
    - Given a string
    - Return the longest substring in alphabetical order

D:
  Intermediate: sub-array

A:
  - Initialize a variable `max` equal to 0
  - Iterate through a range from 0 to the string size (non-inclusive) |idx1|
    - Iterate through a range from idx1 to the string size (non-inclusive) |idx2|
      - Break if the character at idx1 is > the character at idx2
      - Else reassign max to the length of the current string if the current string size is greater than `max`
  - Return `max`
=end

# def longest(string)
#   max_size = 0
#   max_word = ''

#   string.chars.each_index do |idx1|
#     (idx1...string.size).each do |idx2|
#       current_string = string[idx1..idx2]
#       break if current_string.chars != current_string.chars.sort

#       if current_string.size > max_size
#         max_word = current_string
#         max_size = current_string.size
#       end
#     end
#   end
#   max_word
# end


# def longest(str)
#   str.chars.slice_when { |a, b| a > b }
#            .max_by(&:size)
#            .join
# end

# def longest(s)
#   s.each_char.slice_when(&:>).max_by(&:size).join
# end

# p longest('asd') == 'as'
# p longest('nab') == 'ab'
# p longest('abcdeapbcdef') == 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# p longest('asdfbyfgiklag') == 'fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'