=begin
Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered.
=end

=begin
P:
  Intput: two string
  Output: boolean

  Explicit requirements:
    - Given two strings
    - Return true if a portion of str_1 characters can be rearranged to match str_2
    - Otherwise return false

D:
  Intermediate: hash

A:
  - Initialize two hashes `hash_1` and `hash_2` which contain the letter counts for str_1 and str_2, respectively.
  - Iterate through hash_2
     - Check that all values in hash_1 are greater to or equal to the value of the same key in hash_2
=end

def scramble(str_1, str_2)
  hash_1, hash_2 = [str_1, str_2].map { |str| str.chars.tally }

  hash_2.keys.all? do |k|
    hash_1.fetch(k, 0) >= hash_2[k]
  end
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false