=begin
Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.
=end

=begin
P:
  Input: string
  Output: string

  Explicit requirements:
    - Given a string
    - Return a new string capitalizing every other character
A:
  - Convert the string to an array and iterate through the array with an index counter
     - Capitalize every character with a corresponding even index
  - Join array back to string with '' delimiter and return the new string
=end

def staggered_case(string)
  capitalized = string.chars.map.with_index do |char, idx|
    idx.even? ? char.upcase : char.downcase
  end
  capitalized.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'