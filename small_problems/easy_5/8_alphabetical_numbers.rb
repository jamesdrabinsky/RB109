=begin
Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
=end

=begin
P:
  Input: array
  Output: array

  Explicit requirements:
    - Given an array of integers between 0 and 19
    - Return an array of those integers sorted based on the English word for each number

D:
  Input: array
  Intermediate: hash
  Output: array

A:
  - Create hash constant consisting of integers as keys and their corresponding english words as values
  - Sort the items in the argument array according to their hash values
=end

ENGLISH_WORDS = %w[zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen]
HASH = (0..19).zip(ENGLISH_WORDS).to_h

def alphabetic_number_sort(arr)
  arr.sort_by { |i| HASH[i] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]





