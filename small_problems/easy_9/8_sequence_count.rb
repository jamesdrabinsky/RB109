=begin
Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.
=end

=begin
P:
  Input: two integers (a count, the first number of the sequence)
  Output: array

  Explicit:
     - Given a count and the first number of a sequence
     - Return an array that contains the same number of elements as the count argument, while the values of the each element will be multiples of the starting number

A:
  - Initialize an array
  - Iterate through a range 1 to the count argument
  -   Multiply the first sequence value by the current range number and add it to the Array
  - Return the array
=end

def sequence(count, first)
  (1..count).map do |num|
    first * num
  end
end

def sequence(count, first)
  count.times.map do |idx|
    first * (idx + 1)
  end
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []