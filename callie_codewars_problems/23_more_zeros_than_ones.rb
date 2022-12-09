=begin
Create a moreZeros function which will receive a string for input, 
and return an array (or null terminated string in C) 
containing only the characters from that string whose 
binary representation of its ASCII value consists of more zeros than ones.

You should remove any duplicate characters, keeping the first occurence of any such duplicates, 
so they are in the same order in the final array as they first appeared in the input string.
=end

=begin
P:
  Input: string
  Output: array 

  Explicit requirements:
    - Given a string
    - Return an array containing only the characters from that string
    whose binary representation of its ASCII value consists of more zeros than ones

D:
  Input: string
  Output: array 

A:
  - Convert the string argument to a array of unique characters
  - Iterate through the array with select
    - Convert the string character to the binary representation of 
    its ASCII value
    - Get count of 1s and 0s
    - Select for only characters that have more 0s than 1s
  - Return array
=end

def more_zeros(string)
  string.chars.uniq.select do |char|
    binary = char.ord.to_s(2)
    binary.count('0') > binary.count('1')
  end
end

p more_zeros('abcde') == ['a','b','d']
p more_zeros('Great job!') == ['a', ' ', 'b', '!']
p more_zeros('DIGEST') == ['D','I','E','T']
p more_zeros('abcdeabcde') == ['a','b','d']