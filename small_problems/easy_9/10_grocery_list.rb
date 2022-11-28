=begin
Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.
=end

=begin
P:
  Input: nested array
  Output: array

  Explicit requirements:
    - Given a nested array with each sub-array containing a fruit and quantity
    - Return an array of the correct number of each fruit

A:
  - Initialize an empty array
   - Iterate through the nested array (fruit, qty)
     - Add the fruit to the array `qty` number of times
  - Return the array
=end

def buy_fruit(groceries)
  groceries.each_with_object([]) do |(fruit, qty), arr|
    qty.times { arr << fruit }
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]