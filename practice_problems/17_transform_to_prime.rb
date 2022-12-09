=begin
Given a List [] of n integers , find minimum number to be inserted in a list, so that sum of all elements of list should equal the closest prime number .
=end

=begin
P:
  Input: array
  Output: integer

  Requirements:
    - Given an array
    - Return the minimum number to be insert in the array so that the suym of all elements of the array are equal to the closest prime number

A:
  - Method one: prime?
    - Iterate through a range n - 1 to 2 
    - If none of the numbers in the range divide evenly into n and n != 1 then n is a prime number

  - Method two: Find the closest prime to the array sum
    - Get the sum of the array
    - Iterate from the sum to an undetermined end point
       - return the current number if it is a prime

  - Method three: Find the difference between the closest prime and the array sum
=end

def prime?(n)
  ((n-1).downto(2).none? { |num| n % num == 0 }) && (n != 1)
end

def closest_prime(arr)
  (arr.sum..Float::INFINITY).each do |num|
    return num if prime?(num)
  end
end

def minimum_number(arr)
  next_prime = closest_prime(arr)
  next_prime - arr.sum
end

#################################################################

require 'prime'

def minimum_number(numbers)
  Prime.find { |prime| prime >= numbers.sum } - numbers.sum
end

p minimum_number([3, 1, 2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2