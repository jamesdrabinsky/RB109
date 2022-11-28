=begin
Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.
=end

=begin
P:
  Input: arr, integer
  Output: boolean

  Explicit requirements:
     - Given an array of integers and a search value
     - Return true if the search value is in the array

A:
  - Iterate through the array and if the current item equals the search value
  return true
=end

def include?(arr, search)
  arr.each do |elem|
    return true if elem == search
  end
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false