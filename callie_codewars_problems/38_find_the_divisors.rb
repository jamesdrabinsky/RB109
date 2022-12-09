=begin
Create a function named divisors/Divisors that takes an integer n > 1 and returns an array with all of the integer's divisors(except for 1 and the number itself), from smallest to largest. If the number is prime return the string '(integer) is prime' (null in C#) (use Either String a in Haskell and Result<Vec<u32>, String> in Rust).
=end

=begin
P:
  Input: integer
  Output: array

  Requirements:
    - Given an integer
    - Return all of the integer's divisors from smallest to largest (not including 1 or the number itself)
    - If the number is prime, return "{integer} is prime"

A:
  - Initialize a list `div`
  - Iterate through a range from 2 to the integer argument minus 1
    - Add each number in the range to `div` if it divides evenly into the integer argument
  - If `div` is empty, return "{integer} is prime"
  - Else return `div`
=end

def divisors(number)
  divs = (2...number).select { |div| number % div == 0 }
  divs.empty? ? "#{number} is prime" : divs
end

p divisors(15) == [3,5]
p divisors(253) == [11,23]
p divisors(24) == [2,3,4,6,8,12]