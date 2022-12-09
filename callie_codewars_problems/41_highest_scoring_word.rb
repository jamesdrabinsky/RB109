=begin
Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.
=end

=begin
P:
  Input: string
  Output: string

  Requirements:
    - Given a string of words
    - Return the highest scoring word 
    - A letter of a word scores points according to its position in the alphabet: a-1, b-2 ...
    - If two words score the same, return the word that appears earliest in the string

E:
  'man i need a taxi up to ubud' --> 'taxi'

D:
  Intermediate: hash

A:
  - Build hash with letters as keys and numbers (starting from 1) as values `alpha_nums`
  - Initialize a variable `max_word` equal to ""
  - Initialize a variable `max_score` equal to 0

  - Convert the string into an array (#split) and iterate through it
    - Iterate through each word and sum of the score of its individual letters in the hash
    - If a words score is higher than `max_score`, then reassign `max_word` to the current word and `max_score` to its score

  - Return `max_word`
=end

ALPHA_NUMS = ("a".."z").map.with_index(1).to_h

def high(string)
  max_word = ""
  max_score = 0
  string.split.each do |word|
    score = word.chars.sum { |char| ALPHA_NUMS[char] }
    if score > max_score
      max_word = word
      max_score = score
    end
  end
  max_word
end

def high(string)
  string.split.max_by { |word| word.chars.sum { |char| ALPHA_NUMS[char] } }
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aa b') == 'aa'
p high('b aa') == 'b'
p high('bb d') == 'bb'
p high('d bb') == 'd'
p high('aaa b') == 'aaa'