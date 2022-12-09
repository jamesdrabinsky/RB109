=begin
Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the
array.
You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always
be at least 2.
The array will always contain letters in only one case.

Example:
['a','b','c','d','f'] -> 'e' ['O','Q','R','S'] -> 'P'
["a","b","c","d","f"] -> "e"
["O","Q","R","S"] -> "P"
(Use the English alphabet with 26 letters!)
Have fun coding it and please don't forget to vote and rank this kata! :-)
I have also created other katas. Take a look if you enjoyed this kata!
=end

=begin
P:
  Input: array
  Output: string

  Requirements:
    - Given an array of consecutive letters
    - Return the missing letter in the array
    - Array will contain only letters in one case

D:
  Intermediate: array (range converted to an array)

A:
  - Initialize a range that starts at the ASCII value of the first element of the argument array and goes to the starting point + 5 (non-inclusive)
  - Substract the sum of this array from the sum of the argument array, with it's letters converted to ASCII values
  - Convert the returned value back to a letter and return it
=end

def find_missing_letter(arr)
  num_arr = arr.map(&:ord)
  real_arr = [*num_arr[0]...num_arr[0] + arr.size]
  (real_arr - num_arr)[0].chr
end

p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"