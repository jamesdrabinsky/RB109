=begin
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)
=end

=begin
P:
  Input: integer
  Output: integer

  Explicit requirements:
     - Given an integer
     - Return the index of the first fibonacci number that has the number of digits specified by the integer argument.

A:
   - Initialize a variable `first` as 1
   - Initialize a variable `second` as 1
   - Initialize a variable `count` as 3

   - Invoke the loop method
     - Reassign `first` to the value assigned to `second`
     - Reassign `second` to the value of adding `first` to `second`
     - Initialize a variable `sum` with the sum of adding `first` to `second`
     - If `sum` has a length equal to the integer argument break (explicit return)
=end

def find_fibonacci_index_by_length(n)
  first = 1
  second = 1
  count = 3

  loop do
    sum = first + second # 2, 3, 5
    return count if sum.digits.size == n

    first = second # 1, 2
    second = sum # 2, 3
    count += 1 # 4
  end
end



p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
