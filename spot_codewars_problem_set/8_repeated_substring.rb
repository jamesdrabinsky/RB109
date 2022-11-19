=begin
For a given nonempty string s 
find a minimum substring t and the maximum number k, such that the entire string s is
equal to t repeated k times. The input string consists of lowercase latin letters. 
Your function should return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

Example #1:
for string
s = "ababab"
the answer is
["ab", 3]

Example #2:
for string
s = "abcde"
the answer is

because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.
=end

=begin
P:
  Input: string
  Output: array (with string and integer)

  Explicit requirements:
   - Given a string
   = Find a minimum substring and the maximum number k 
   such that the string argument is equal to the substring * k

D:
  Input: string
  Output: array (with string and integer)
  Intermediate: array (to store valid substrings)

A:
  - Loop through range 0 to string length (non-inclusive) |idx1|
     - Loop through range idx1 + limit to string length (non-inclusive) |idx2|
       - a substring is equal to string[idx1..idx2]
       - if the substring multiplied by (string length / substring length) - string then add it to valid_substrings
  - Return the minimum string from valid substrings
=end


def f(string)
  (0...string.size).each do |idx1|
    (idx1...string.size).each do |idx2|
      current_str = string[idx1..idx2]
      times = string.size / current_str.size
      return [current_str, times] if current_str * times == string
    end
  end
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]