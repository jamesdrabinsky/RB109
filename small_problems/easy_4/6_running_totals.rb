=begin
Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.
=end

=begin
P:
  Input: array of integers
  Output array of integers of equal length

  Explicit requirements:
    - Given an array of numbers
    - Return an array with the same number of elements,
    and each element has trhe running total from the original array

D:
  Input: integer
  Intermediate: array
  Output integer

A:
  - Initialize an empty array `running`
  - Initialize a variable `total` to 0
  - Iterate through the array Argument
     - Increment total by current number
     - Add total to `running`
  - Return `running`
=end

def running_total(arr)
  running = []
  total = 0

  arr.each do |num|
    total += num
    running << total
  end
  running
end

def running_total(arr)
  running = []

  arr.reduce(0) do |total, num|
    total += num
    p total
    running << total
  end
  running
end

# def running_total(array)
#   sum = 0
#   array.map { |number| sum += number }
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []