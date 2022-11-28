=begin
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.
=end

=begin
P:
  Input: string
  Output: string

  Explicit requirements:
     - Given a string
     - Return the middle character or characters of that string
     - An odd length string should return 1 character
     - An even length string should return 2 characters

A:
  - Initialize a variable middle which is equal to the string size / 2 
  - If the string size is odd return the character at the middle index from the string
  - If the string size is even return the substring from the middle index to the middle index + 1 (inclusive) from the string

=end

def center_of(string)
  odd = true if string.size.odd?
  middle = string.size / 2

  if odd
    string[middle]
  else
    string[middle - 1..middle]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
