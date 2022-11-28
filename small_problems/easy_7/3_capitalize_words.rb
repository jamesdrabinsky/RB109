=begin
Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.
=end

=begin
P:
  Input: string
  Output: string

  Explicit requirements:
    - Given a string
    - Return a new string with the original value with the first character of every word capitalized and all other lowercase

A:
  - Convert the string to an array and iterate through the array
     - Capitalize every word in the array
  - Return the array joined back into a string with a ' ' delimiter
=end

def word_cap(string)
  # string.split.map { |word| word.capitalize }.join(' ')
  string.split.map(&:capitalize) * ' '
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'