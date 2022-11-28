=begin
Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.
=end

=begin
P:
  Input: string
  Output: string

  Explicit requirements:
    - Given a string
    - Return a new string the case of each character swapped
A:
  - Initialize an emptry string
  - Iterate through range from 0 to string length (non-inclusive)
    - If the current character is uppercase, convert it to lowercase and add it to empty string
    - Else, convert it to uppercase and add it to empty string
  - Return the new string
=end

def swapcase(string)
  new_string = ''

  (0...string.size).each do |idx|
    char = string[idx]
    char =~ /[A-Z]/ ? new_string << char.downcase : new_string << char.upcase
  end
  new_string
end

def swapcase(string)
  arr = string.chars.map do |char|
    char =~ /[A-Z]/ ? char.downcase : char.upcase
  end
  arr.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'