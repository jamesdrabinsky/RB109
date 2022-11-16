=begin
Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.
=end

def even_or_odd(number)
  number % 2 == 0 ? 'Even' : 'Odd'
end

p even_or_odd(2) == "Even"
p even_or_odd(0) == "Even"
p even_or_odd(7) == "Odd"
p even_or_odd(1) == "Odd"
p even_or_odd(-1) == "Odd"