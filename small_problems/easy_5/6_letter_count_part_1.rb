=begin
Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.
=end

=begin
P:
  Input: string
  Output: hash (key -> word size, value -> number of occurences)

  Explicit requirements:
    - Given a string of words 
    - Return a hash that shows the number of words of different sizes

D:
  Input: string
  Output: hash

A:
  - Initialize a hash with a default value of 0
  - Convert the string to an array and iterate through the array
    - Increment the hash value corresponding to the current word's length by 1
  - Return hash
=end

def word_sizes(string)
  string.split.each_with_object(Hash.new(0)) do |word, hash|
    hash[word.size] += 1
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}