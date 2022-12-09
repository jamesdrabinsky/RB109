=begin
There is an array with some numbers. All numbers are equal except for one. Try to find it!

find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
It’s guaranteed that array contains at least 3 numbers.
=end

=begin
P:
  Input: array
  Output: integer

  Requirements:
    - Given an array of integers
    - Return the unique number in the array

D:
  Intermediate: hash

A:
  - Initialize a hash `counter` with a default value of 0
  - Iterate through the Array
    - Increment the current number's corresponding hash value by 1
=end

def find_uniq(arr)
  counter = arr.each_with_object(Hash.new(0)) do |num, hash|
    hash[num] += 1
  end
  counter.find { |_, v| v == 1 }[0]
end

p find_uniq([1,1,1,1,0]) == 0
p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55