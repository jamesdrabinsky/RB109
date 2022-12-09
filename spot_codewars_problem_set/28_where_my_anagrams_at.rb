=begin
What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:

'abba' & 'baab' == true
'abba' & 'bbaa' == true
'abba' & 'abbba' == false
'abba' & 'abca' == false

Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array
with words. You should return an array of all the anagrams or an empty array if there are none. For example:
=end

=begin
P:
  Input: string, array
  Output: array

  Requirements:
    - Given a search string and an array of string
    - Return all strings in the array that are anagrams of the search string
    - Return an emptry array if there are no anagrams

A:
  - Iterate through the array argument
    - Select only the string that, when sorted, are equal to the sorted search string
    (Convert the strings to arrays before sorting)
=end

def anagrams(search, arr)
  arr.select { |str| str.chars.sort == search.chars.sort }
end


p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']

p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']

p anagrams('laser', ['lazing', 'lazy', 'lacer']) == []