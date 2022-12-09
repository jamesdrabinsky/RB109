=begin
For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times.

The input string consists of lowercase latin letters.

Your function should return :

a tuple (t, k) (in Python)
an array [t, k] (in Ruby and JavaScript)
in C, return k and write to the string t passed in parameter
=end

=begin
P:
  Input: string
  Output: array (string, integer)

  Requirements:
    - Given a string
    - Find a minimum substring `t` and the maximum number `k`, such that the entire string s is equal to t repeated k times

A:
  - Iterate through a range 0 to string length / 2 (non-inclusive) |idx|
    - Initialize a variable `substring` equal to string[0..idx] (inclusive)
    - Initialize a variable `len` equal to the length of the substring
    - If the substring * (string length / substring length) == string 
    return the substring
=end

def f(string)
  (0...string.size).each do |idx|
    substring = string[0..idx]
    times = string.size / substring.size
    return [substring, times] if (substring * times) == string
  end
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]