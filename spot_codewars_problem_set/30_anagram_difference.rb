=begin
Given two words, how many letters do you have to remove from them to make them anagrams?

Example
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10

Hints
A word is an anagram of another word if they have the same letters (usually in a different order).
Do not worry about case. All inputs will be lowercase.
=end

# def anagram_difference(w1, w2)
#   alpha = ('a'..'z').to_a
#   sum = 0
  
#   alpha.each do |char|
#     sum += (w1.count(char) - w2.count(char)).abs
#   end 
  
#   sum
# end

# def anagram_difference(w1, w2)
#   Hash.new(0).tap do |h|
#     w1.chars.each { |c| h[c] += 1 }
#     w2.chars.each { |c| h[c] -= 1 }
#   end.values.map(&:abs).sum
# end

def anagram_difference(w1, w2)
  counts = Hash.new(0)

  w1.chars.each { |char| counts[char] += 1 }
  w2.chars.each { |char| counts[char] -= 1 }

  counts.values.map(&:abs).sum
end


# p anagram_difference('', '') == 0
# p anagram_difference('a', '') == 1
# p anagram_difference('', 'a') == 1
# p anagram_difference('ab', 'a') == 1
# p anagram_difference('ab', 'ba') == 0
# p anagram_difference('ab', 'cd') == 4
# p anagram_difference('aab', 'a') == 2
# p anagram_difference('a', 'aab') == 2
# p anagram_difference('codewars', 'hackerrank') == 10


require 'set'

# p Set.new('Codewars'.chars) ^ Set.new('Hackerrank'.chars)
p Set.new('Codewars'.chars)