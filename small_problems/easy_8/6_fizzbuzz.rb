=begin
Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers from the starting number to the ending number, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".
=end

=begin
P:
  Input: two numbers
  Output: 

  Explicit requirements:
     - Given two numbers, the start and end point of a range
     - Print "FizzBuzz" is the number is divisible by both 3 and 5
     - Print "Fizz" if a number is divisible by 3
     = Print "Buzz" if a number is divisible by 5
     - Otherwise print the number

A:
  - Iterate through a range from num_1 to num_2 (inclusive)
  - and print out the value according to the above criteria
=end

def fizzbuzz(num_1, num_2)
  (num_1..num_2).map do |num|
    if (num % 3 == 0) && (num % 5 == 0)
      "FizzBuzz"
    elsif num % 3 == 0
      "Fizz"
    elsif num % 5 == 0
      "Buzz"
    else
      num
    end
  end
end

p fizzbuzz(1, 15)