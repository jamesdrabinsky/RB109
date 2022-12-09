=begin
Given an array of integers, find the one that appears an odd number of times.

There will always be only one integer that appears an odd number of times.
=end

=begin
P:
  Input: array
  Output: integer

  Requirements:
     - Given an Array
     - Find the integer that appears an odd number of times

D:
  Intermediate: hash

A:
   - Initialize a hash `counter` that contains a count of each integer in the array
   - Select the key from the hash that has an associated value that is odd
=end

def find_it(arr)
  arr.tally.find { |_, v| v.odd? }[0]
end

def find_it(arr)
counter = arr.each_with_object(Hash.new(0)) do |num, hash|
  hash[num] += 1
end
counter.find { |_, v| v.odd? }[0]
end

# def find_it(seq)
#   seq.reduce(:^)
# end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10