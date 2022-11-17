=begin
Given n, take the sum of the digits of n.
If that value has more than one digit, continue reducing in this way until a
ingle-digit number is produced. The input will be a non-negative integer.
=end

=begin
16  -->  1 + 6 = 7
942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2
=end

=begin
P:
  Input: integer
  Output: integer

  Explicit requirements:
     - Given an integer
     - Take the sum of the digits in that intefger
     - If the sum has more than one digit, continue to reduce in this way until a single-digit 
     number is produced.  
     - The input will be a non-negative integer

D:
  Input: integer
  Output: integer

A:
  - Initialize a variable `sum` to 0
  - Create a while loop which will loop until `sum` is a number with one digit
    - Reassign sum to the result of adding all digits in the integer argument. 
    - If the sum has more than one digit, reassign the integer argument to the sums
  - Return the one-digit sum
=end

def digital_root(number)
  sum = 0

  loop do
    sum = number.digits.sum
    break if sum.digits.size == 1

    number = sum
  end
  sum
end

def digit_root_recursive(number)
  sum = number.digits.sum
  number = sum
  return sum if sum < 10
  
  digit_root_recursive(number)
end

p digital_root(16) == 7
p digital_root(942) == 6
p digital_root(132189) == 6
p digital_root(493193) == 2

p digit_root_recursive(16) == 7
p digit_root_recursive(942) == 6
p digit_root_recursive(132189) == 6
p digit_root_recursive(493193) == 2