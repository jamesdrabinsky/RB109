=begin
Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of
characters then it should replace the missing second character of the final pair with an underscore ('_').
=end

=begin
P:
  Input: string
  Output: array

  Requirements:
    - Given a String
    - Split the string into pairs of two characters. 
    - Return an array with 2 character string and if the string has an odd length replace the last character in the last pair with a "_"

A:
  - Split the string into sub-arrays of two characters
  - Iterate through the returned array
     - If a sub-array has a length of 1, append a "_" to it.
  - Join the sub-arrays into strings
  - Return the array of strings
=end

def solution(string)
  arr = string.chars.each_slice(2).map do |sub_arr|
    sub_arr.size == 1 ? sub_arr << "_" : sub_arr
  end
  arr.map(&:join)
end

def solution(str)
  str << "_" if str.length % 2 != 0
  str.chars.each_slice(2).map(&:join)
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []