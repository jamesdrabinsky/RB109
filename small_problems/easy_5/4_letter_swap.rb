=begin
Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces/
=end

=begin
P:
  Input: string
  Output: string

  Explicit requirements:=
    - Given a string of words
    - Return a string where each of the letters first and last characters
    are swapped

D:
  Input: string
  Intermediate: array
  Output: string

A:
  - Convert the string into an array
  - Iterate through the array
     - Swap the first and last characters in the current word
  - Join array back into string and return string
=end

def swap(string)
  swapped = string.split.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  swapped.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'