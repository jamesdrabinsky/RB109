=begin
Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:
=end

=begin
P:
  Input: string
  Output: array

  Explicit requirements:
     - Given a string
     - Return a list of all possible substrings ordered by where in the string the substring begins

D:
  Input: string
  Output: array

A:
  - Initialize an emptry array
  - Iterate through a range from 0 to the string length (non-inclusive) |idx1|
     - Iterate through a range from idx1 to the string length (non-inclusive) |idx2|
       - Take a slice of the string from idx1 to idx2 (inclusive) and add it to the array
  - Return the array
=end

def substrings(string)
  (0...string.size).each_with_object([]) do |idx1, arr|
    (idx1...string.size).each do |idx2|
      arr << string[idx1..idx2]
    end
  end
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

# string = 'abcde'

# combos = (1..string.size).flat_map do |size|
#   string.chars.combination(size).to_a
# end

# p combos.sort.map(&:join)