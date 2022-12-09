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
    - Given a string with multiple words
    - Return the word with the highest score
    - Each letter of the alphabet has a score according to its position in the alphabet
    - If two words score the same, return the word that appears the earliest

A:
  - Initialize a constant hash pairing each letter of the alphabet (lowercase) with the value of its position in the alphabet (starting at 1) `alpha_values`
  - Initialize a variable `max_sum` equal to 0
  - Initialize a variable `max_word` that is equal to `nil`

  - Convert the string to an array and iterate through it
    - Get a sum of all the characters' hash values in `alpha_values`.  
    - If the sum is greater than `max_sum` then 
      - `max_sum` = the current sum
      - `max_word` = current_word
  - Return `max_word`
=end

ALPHA_VALUES = ("a".."z").map.with_index(1).to_h

def high(string)
  max_sum = 0
  max_word = nil

  string.split.each do |word|
    current_sum = word.chars.sum { |letter| ALPHA_VALUES[letter] }
    if current_sum > max_sum
      max_sum = current_sum
      max_word = word
    end
  end
  max_word
end

def high(string)
  scores = string.split.map do |word|
    [word, word.chars.sum { |char| ALPHA_VALUES[char] }]
  end
  scores.max_by(&:last)[0]
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'
