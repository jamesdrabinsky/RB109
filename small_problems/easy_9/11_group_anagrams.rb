=begin
Given the array...

Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:
=end

=begin
P:
  Input: array
  Output: 

  Explicit requirements:
    - Given an array
    - Output the groups of words that are anagrams 
    - Anagrams are words that have the same exact letters in them but in a different orders

A:
  - Initialize a hash with an array as a default value
   - Iterate through the argument array
     - Add each word to an array within the hash with the key as itself, but sorted.
  - Print all arrays with more than one value
=end

def group_anagrams(words)
  groups = Hash.new { |h, k| h[k] = [] }

  words.each do |word|
    key = word.chars.sort.join
    groups[key] << word
  end

  groups.values.select { |v| v.size > 1 }.each { |v| p v }
end

# def print_anagrams(arr)
#   arr.group_by { |word| word.chars.tally }.each_value { |words| p words }
# end

# without group_by
# def print_anagrams(arr)
#   arr.each_with_object(seen = Hash.new { |h, k| h[k] = [] }) { |word| seen[word.chars.tally] << word }.each_value { |words| p words }
# end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

p print_anagrams(words)

# ["demo", "dome", "mode"]
# ["neon", "none"]
#(etc)