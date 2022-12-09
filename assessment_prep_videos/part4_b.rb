=begin
Write a function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise return false.

Only lower case letters will be used (a-z). No punctuation or digits will be included.
=end

def scramble(str_1, str_2)
  hash_1, hash_2 = [str_1, str_2].map { |str| str.chars.tally }

  hash_2.keys.all? do |key|
    hash_1.fetch(key, 0) >= hash_2[key]
  end
end

def scramble(str_1, str_2)
  hash_1, hash_2 = [str_1, str_2].map { |str| str.chars.tally }

  hash_2.keys.each do |key|
    return false if hash_2[key] > hash_1.fetch(key, 0)
  end
  true
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true