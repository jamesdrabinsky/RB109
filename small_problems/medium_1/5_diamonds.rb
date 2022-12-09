=begin
Write a method that displays a 4-pointed diamond in an n x n grid, 
where n is an odd integer that is supplied as an argument to the method. 
You may assume that the argument will always be an odd integer.
=end

=begin
P:
  Input: integer
  Output: 

  Explicit requirements:
    - Given an Integer
    - Print a 4-pointed diamond in an n X n grid, where n is an odd integer.

D:

  Intermediate: array

A:
  - Initialize a variable `pattern` which is equal to an empty array
  - Iterate through a range from 1 to the integer argument by steps of 2(inclusive)
    - Add each number to the `pattern`
  - Initialize a new array `reverse_pattern` which is equal to a subsection of `pattern` from 0 to -2 and reversed
  - Reassign `pattern` to `pattern` + `reverse_pattern`

  - Iterate through `pattern`
    - print the "*" * the current number centered by n
=end

def diamond(n)
  pattern = [*(1..n).step(2)]
  reverse_pattern = pattern[..-2].reverse
  pattern += reverse_pattern
  
  pattern.each { |num| puts ("*" * num).center(n) }
end

diamond(1)
=begin
*
=end

diamond(3)

=begin
 *
***
 *
=end

diamond(21)

=begin
    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
=end

