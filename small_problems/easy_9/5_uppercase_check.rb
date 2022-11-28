=begin
Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.
=end

=begin
P:
  Input: String
  Output: Boolean

  Explicit requirements:
     - Given a String
     - Return true if all the alphabetic characters in the string are uppercase
     - Return false otherwise

D:

A:
  - Iterate through a range from 0 to string length (non-inclusive)
  - If the character at the current index is alphabetic
    - Return false unless the character is capitalized
  - Return true
=end

def uppercase?(string)
  (0...string.size).each do |idx|
    if string[idx] =~ /[A-Z]/i
      return false unless string[idx] =~ /[A-Z]/
    end
  end
  true
end

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true