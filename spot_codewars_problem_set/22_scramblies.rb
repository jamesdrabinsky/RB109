=begin
Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match
str2, otherwise returns false.

Notes:
Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered
Input strings s1 and s2 are null terminated.
=end

=begin
P:
  Input: two strings
  Output: boolean

  Excplicit requirements:
     - Given two strings
     - Return true if a portion of the first string can be rearranged to match string 2
     - All letters are lowercase
     - No punctuation or digits will be included

D:
  Input: two strings
  Output: boolean
  Intermediate: hash

A:
  - Build a hash which contains a letter count for all letters in the second string
  - Iterate through the first string
     - If the current character is a key in the hash, decrement it's value by 1
  - Once iteration is complete, return true if all hash values are 0

D:
=end

def scramble(string_1, string_2)
  count = string_2.chars.each_with_object(Hash.new(0)) do |char, hash|
    hash[char] += 1
  end

  string_1.chars.each do |char|
    count[char] -= 1 if count.key?(char)
  end

  count.values.all? { |v| v <= 0 }
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true