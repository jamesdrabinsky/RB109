=begin
Task
The year of 2013 is the first year after the old 1987 with only distinct digits.

Now your task is to solve the following problem: given a year number, find the minimum year number which is strictly larger than the given one and has only distinct digits.

Input/Output
[input] integer year
1000 ≤ year ≤ 9000

[output] an integer
the minimum year number that is strictly larger than the input number year and all its digits are distinct.
=end

=begin
P:
  Input: integer
  Output: integer

  Requirements:
    - Given an integer (year)
    - Find the minimum year number which is strictly larger than the given one AND ONLY HAS DISTINCT DIGITS

A:
  - Iterate through a range from the integer argument + 1 to the number sorted in descending order
  - 
=end

def distinct_digit_year(year)
  # max = year.digits.sort_by(&:-@).join.to_i

  (year + 1..Float::INFINITY).each do |date|
    return date if date.digits.size == date.digits.uniq.size
  end
end

p distinct_digit_year(1987) == 2013
p distinct_digit_year(2013) == 2014
p distinct_digit_year(2229) == 2301