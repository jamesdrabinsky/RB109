=begin
Given a positive integer n, calculate the following sum:

n + n/2 + n/4 + n/8 + ...
All elements of the sum are the results of integer division.

Example
25  =>  25 + 12 + 6 + 3 + 1 = 47
=end

=begin
P:  
  Input: integer
  Output: integer

  Requirements:
    - Given an integer
    - Get the sum of each successive interger divided by a multiple of 2

A:
  - Initialize a variable `sum` equal to 0
  - Invoke the loop method
    - Increment `sum` by `num`
    - Reassign num to num / 2
    - Break if num < 1
  - Return `sum`
=end

def halving_sum(num)
  sum = 0

  loop do
    sum += num
    num /= 2
    break if num < 1
  end
  sum
end


p (0..Math.sqrt(25)).map { |i| 25 / 2**i }

# p halving_sum(25) #== 47
# p halving_sum(127) == 247