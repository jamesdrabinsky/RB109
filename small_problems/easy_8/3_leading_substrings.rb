=begin
Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.
=end

=begin
P:
  Input: string
  Output: array

  Explicit requirements:
     - Given a string
     - Return a list of all substrings of a string that start that the beginning of the original string
     - The return value should be from shortest to longest substring

D:
  Input: string
  Output: array

A:
  - Initialize an empty array
  - Iterate through a range from 0 to string length (non-inclusive)
    - Take a slice of the string from the 0 index to the current numnber in the range
    - Add that element to the empty array
  - Return the array
=end

def leading_substrings(string)
  (0...string.size).map do |idx|
    string[0..idx]
  end

  # (0...string.size).map { |idx| string[0..idx] }
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']