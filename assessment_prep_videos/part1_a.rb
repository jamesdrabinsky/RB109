=begin
Given a non-empty string check if it can be constructed by taking a substring of it and appending 
multiple copies of the substring together.  

Example 1:

Input: "abab"
Output: True
Explanation: It's the substring "ab" twice

Example 2:

Input: "aba"
Output: False
=end

=begin
A:
  Input: string
  Output: boolean

  Explicit requirements:
    - Given a String
    - Return true if it can be reconstructed by taking a substring of it
    and appending multiple copies together
    - All characters are lowercase letters

  Implicit requirements:
     - Can the substring have a length of 1?

D:
  Input: string
  Output: boolean
  Intermediate: string (slice)

A:
  - Iterate through a range from 0 to the string length (non-inclusive)
    - On each iteration, take a slice of the string from index 0 to the current idx position (inclusive)
    - Initialize a `times` variable which is the result of dividing the string length by the substring length
    - If the substring multiplied by `times` is equal to the string, return true
  - return false

=end

def repeated_substring_pattern(string)
  (0...string.size - 1).each do |idx| # Can probably do (0...(string.size / 2))
    substring = string[0..idx]
    times = string.size / substring.size
    return true if (substring * times) == string
  end
  false
end

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true
