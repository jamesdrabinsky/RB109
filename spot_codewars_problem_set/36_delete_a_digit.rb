=begin
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
    - Find the maximal number you can obtain by deleting exactly one digits of the given number

D:
  Intermediate: sub-arrays

A:
   - Find all possible n-digit combinations of the integer argument (n is the number length - 1)
   - Find the largest number in the returned array of combinations
    - Convert the integer to an array (#digits, #reverse) and call #combination with n as an argument
    
=end

# def delete_digit(number)
#   n = number.digits.size - 1
#   number.digits.reverse.combination(n).to_a.max.join.to_i
# end

# def delete_digit(number)
#   max = 0
#   n = number.digits.size - 1

#   number.digits.reverse.combination(n).each do |sub_arr|
#     current_num = sub_arr.join.to_i
#     max = current_num if current_num > max
#   end
#   max
# end

def delete_digit(num)
  digits = num.to_s.chars
  (0...digits.size).map { |idx| (digits[0...idx] + digits[idx + 1..-1]).join.to_i }.max
end

p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1
