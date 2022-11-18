=begin
Find all pairs

You are given array of integers, your task will be to count all pairs
in that array and return their count.

Notes:
Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.:
for [0, 0, 0, 0] the return value is 2 (= 2 pairsof 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000

Examples
[1, 2, 5, 6, 5, 2] --> 2
...because there are 2 pairs: 2 and 5
[1, 2, 2, 20, 6, 20, 2, 6, 2] --> 4
...because there are 4 pairs: 2, 20, 6 and 2 (again)
=end

=begin
P:
  Input: array of integers or empty
  Output: integer

  Explicit requirements:
     - Given an array of integers
     - Count all pairs in that array and return the count

D:
  Input: array of integers or empty
  Output: integer
  Intermediate: hash

A:
  - Build a hash containing each number as a key and their counts as values
  - Divide all values by 2 and take the sum of the values.
  - Return the sum
=end

def pairs(arr)
  arr.tally.values.map { |count| count / 2 }.sum
end

def pairs(arr)
  counts = arr.each_with_object(Hash.new(0)) do |num, hsh|
    hsh[num] += 1
  end
  counts.values.map { |count| count / 2 }.sum
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0