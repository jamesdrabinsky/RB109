=begin
Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order 
of the strings of a1 which are substrings of strings of a2.
=end

=begin
P:
  - Input: two arrays
  - Output: array

  Explicit requirements:
    - GIven two arrays of strings 
    - Return a sorted array of the strings of a1 which are substrings of strings in a2

D:
  - Input: two arrays
  - Output: array

A:
  - First method: substring?
    - Use nested iteration to get all slices of string
    - If any of the slices correspond to a string of characters equal to the string argument, return true

  - Second method: in_array
    - Initialize a variable `substrings` to an empty array
    - Iterate through  the elements in array1
      - Iterate through the elements in array2
       - Call the substring? method with the current elements from array1 and array2 passed in as arguments.
       - If the return value is true then add the element from array1 to the `substrings`
    - Once iterations is complete, select all unique elemtns from `substrings` and return them in an array.
=end

def substring?(str_1, str_2)
  (0..str_2.size - 1).each do |idx1|
    (idx1..str_2.size - 1).each do |idx2|
      return true if str_1 == str_2[idx1..idx2]
    end
  end
  false
end

def in_array(array1, array2)
  array1.select { |word1| array2.any? { |word2| substring?(word1, word2) } }.sort
  # word2.include?(word1)
end

def in_array(array1, array2)
  substrings = []

  array1.each do |word1|
    array2.each do |word2|
      substrings << word1 if substring?(word1, word2)
    end
  end
  substrings.uniq.sort
end


a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
p in_array(a1, a2) == ["arp", "live", "strong"]

a1 = ["tarp", "mice", "bull"]
a2 - []
p in_array(a1, a2) == []