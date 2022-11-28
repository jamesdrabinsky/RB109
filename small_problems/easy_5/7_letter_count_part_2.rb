=begin
Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.
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
    - The current word's length should only account for alphebetic characters
  - Return hash
=end

def word_sizes(string)
  string.split.each_with_object(Hash.new(0)) do |word, hash|
    current_length = word.count('A-Za-z')
    hash[current_length] += 1
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}


