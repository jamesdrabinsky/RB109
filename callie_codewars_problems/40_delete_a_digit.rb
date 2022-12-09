=begin
Task
Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101.

Input/Output
[input] integer n

Constraints: 10 ≤ n ≤ 1000000.

[output] an integer

=end

=begin
P:
  Input: integer
  Output: integer

  Requirements:
    - Given an integer
    - Return the maximum number you can obtain by delete exactly one digit

D:
  Intermediate - sub-arrays

A:
  - Initialize a variable `size` equal to the integer argument's length - 1
  - Get every `size`-length combination of the integer.
  - Get the maximum sub-array, join it to a string, and convert it to an integer
=end

def delete_digit(num)
  size = num.digits.size - 1
  max = num.digits.reverse.combination(size).max
  max.join.to_i
end


# p delete_digit(152) == 52
# p delete_digit(1001) == 101
# p delete_digit(10) == 1

num = 152
combos = num.digits.reverse.combination(2).to_a

string_num = num.to_s
combos_2 = []

string_num.chars.each_index do |idx1|
  (idx1 + 1...string_num.size).each do |idx2|
    combos_2 << [string_num[idx1], string_num[idx2]]
  end
end

p combos_2