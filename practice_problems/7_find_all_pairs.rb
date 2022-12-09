=begin
You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
=end

=begin
P:
    Input: array
    Output: integer

    Requirements:
       - Given an Array
       - Return a count of all pairs in the array
       - Count each pair only once 

D:
  Intermediate: hash

A:
  - Initialize a hash `counts` with a default value of 0
  - Iterate through the array
    - Increment the character key's corresponding value by 1

  - Select the key-value pairs in the hash with a value >= 2
  - Divide each of these values by 2 and get their sum
=end

def pairs(arr)
  counts = Hash.new(0)

  arr.each do |num|
    counts[num] += 1
  end

  counts.select { |_, v| v >= 2 }.values.sum { |v| v / 2 }
end

# def pairs(arr)
#   arr.group_by { |x| x }.sum { |x, y| y.size / 2 }
# end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0