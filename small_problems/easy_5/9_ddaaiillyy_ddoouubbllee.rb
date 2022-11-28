=begin
Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.
=end

=begin
P:
  Input: string
  Output: string

  Explicit requirements:
    - Given a string
    - Return a new string that contains the value of the original string with all consecutive duplicate characters collapsed.
D:
  Input: string
  Intermediate: array
  Output: string

A:
  - Initialize an empty array
  - Convert the argument string to an array and iterate through it.  
     - Add the current character to the empty array if the last character in the array != the current character.
  - Join the populated array into a string
=end

def crunch(string)
  arr = []
  string.each_char do |letter|
    arr << letter if arr.last != letter
  end
  arr.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''





