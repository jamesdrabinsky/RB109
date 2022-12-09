=begin
Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered.
=end

=begin
P:
  Input: two strings
  Output: boolean

  Requirements:
    - Given two strings
    - Return true if a portion of str1 characeters can be rearranged to match str2
    - Otherwise return false

D:
  Intermediate: hash

A:
  - Initialize two hashes, `hash_1` and `hash_2`, with letter counts of each string

  - Iterate through the keys of hash_2 and check that all value of the corresponding keys in hash_1 have a value great or equal to hash_2
=end

def scramble(str_1, str_2)
  hash_1, hash_2 = [str_1, str_2].map(&:chars).map(&:tally)

  hash_2.keys.all? do |key|
    hash_1.fetch(key, 0) >= hash_2[key]
  end
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true