=begin

Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter
words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be
included only when more than one word is present.
Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
=end

=begin
P:
  Input: string
  Output: string

  Explicit requirements:
     - Given a string of one or more words
     - Return the same string but with all five ore more letter words reversed

D:
  Input: string
  Output: string
  Intermediate: array

A:
  - Split words on the space delimiter
  - Iterate through the list of words
    - If a word has a length of 5 or more, reverse it.
    - Add element to new array
  - Join new array into string with ' ' between each element
  - Return string
=end

def spinWords(string)
  string.split.map { |word| word.size > 5 ? word.reverse : word }.join(' ')
end

p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
p spinWords("This is a test") == "This is a test"
p spinWords("This is another test") == "This is rehtona test"
p spinWords("test") == "test"