=begin
Complete the function that takes an array of words.
You must concatenate the nth letter from each word 
to construct a new word which should be returned as a string,
where n is the position of the word in the list.

For example:
["yoda", "best", "has"] --> "yes"
^ ^ ^
n=0 n=1 n=2
Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.
=end

=begin
P:
  Input: array
  Output: string

  Explicit requirements:
    - Given an array of words
    - Concantenate the nth letter from each word
    - n is the position of the word in the list

D:
  Input: array
  Output: string
  IntermediateL: hash

A:
  - Initialize a hash containing the words from the array argument as keys and their index positions as values
  - Iterate through the hash, a accessing character at n index position from each key (n being the value)
  - Join the array into a string and return the string
=end

def nth_char(arr)
  pos = arr.each_with_index
  pos.map { |k, v| k[v] }.join
end

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) == 'Codewars'
