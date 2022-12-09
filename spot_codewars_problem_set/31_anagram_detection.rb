=begin
An anagram is the result of rearranging the letters of a word to produce a new word (see
wikipedia).

Note: anagrams are case insensitive

Complete the function to return true if the two arguments given are anagrams of each other; return false otherwise.

Examples
"foefet" is an anagram of "toffee"
"Buckethead" is an anagram of "DeathCubeK"
=end

=begin
P:
  Input: two strings
  Output: boolean

  Requirements:
    - Given two strings
    - Return true if they are anagrams of each other
    - Otherwise return false

D:
  Intermediate: hash

A:
  - Create hashes containing the letter count of each string and compare them

  - Iterate through a range of 
=end 

def is_anagram(str_1, str_2)
  str_1.downcase.chars.tally == str_2.downcase.chars.tally
end

def is_anagram(str_1, str_2)
  sum = ("a".."z").reduce(0) do |total, char|
    total += (str_1.downcase.count(char) - str_2.downcase.count(char)).abs
  end 
  sum == 0
end

def is_anagram(test, original)
  test.downcase.chars.sort == original.downcase.chars.sort
end

p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false