=begin
Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.exercise:
=end

=begin
P:
  Input: string
  Output: array

  Explicit requirements:
     - Given a string
     - Return a list of all possible substrings that are palindromic

D:
  Input: string
  Output: array

A:
  - Initialize an emptry array
  - Iterate through a range from 0 to the string length (non-inclusive) |idx1|
     - Iterate through a range from idx1 + 1 to the string length (non-inclusive) |idx2|
       - Take a slice of the string from idx1 to idx2 (inclusive) and add it to the array
       if it is equal to its reverse
  - Return the array
=end

def palindromes(string)
  (0...string.size).each_with_object([]) do |idx1, arr|
    (idx1 + 1...string.size).each do |idx2|
      substring = string[idx1..idx2]
      arr << substring if substring == substring.reverse
    end
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]