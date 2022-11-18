=begin
You will be given a list of strings. You must sort it alphabetically (case-sensitive, 
and based on the ASCII values of the chars) and then return the first value.

The returned value must be a string, and have "***" between each of its letters.

You should not remove or add elements from/to the array.
=end

=begin
P:
  Input: Array of strings
  Output: string

  Explicit requirements:
    - Given a list of strings
    - Sort it alphabetically and return the first value with *** between each of it's letters

D:
  Input: Array of strings
  Output: string
  Intermediate: array

A:
  - Sort the array in ascending order
  - Select the first item from the sorted array
  - Insert *** between each character in the selected string.
=end

def two_sort(arr)
  arr.min.split('').join('***')
end

def two_sort(arr)
  arr.min.chars * ('***')
end

p two_sort(["bitcoin", "take", "over", "the", "world", "maybe", "who", "knows", "perhaps"]) == 'b***i***t***c***o***i***n'
p two_sort(["turns", "out", "random", "test", "cases", "are", "easier", "than", "writing", "out", "basic", "ones"]) == 'a***r***e' 
p two_sort(["lets", "talk", "about", "javascript", "the", "best", "language"]) == 'a***b***o***u***t'
p two_sort(["i", "want", "to", "travel", "the", "world", "writing", "code", "one", "day"]) == 'c***o***d***e'
p two_sort(["Lets", "all", "go", "on", "holiday", "somewhere", "very", "cold"]) == 'L***e***t***s'