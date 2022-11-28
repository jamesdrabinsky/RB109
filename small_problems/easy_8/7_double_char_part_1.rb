=begin
Write a method that takes a string, and returns a new string in which every character is doubled.
=end

=begin
P:
  Input: string
  Output: string

  Explicit requirements:
     - Given a String
     - Return a new string in which every character is doubled

A:
  - Initialize an empty array
  - Append each character twice to the emptry array
  - Join the array into a string with a '' delimiter
=end

def repeater(string)
  string.chars.map { |char| char * 2 }.join
end

def repeater(string)
  doubled = string.chars.each_with_object([]) do |char, arr|
    2.times { arr << char }
  end
  doubled.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''