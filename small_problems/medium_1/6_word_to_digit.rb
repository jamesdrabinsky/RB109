=begin
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
=end

=begin
P:
  Input: string
  Output: string

  Explicit requirements:
    - Given a string
    - Return the same string with any sequence of 'zero'..'nine' converted to a string of digits

D:

  Intermediate: Hash

A:
  - Initialize a hash `string_digits` that pairs each string number with its corresponding integer
  - Initialize an emptry array `new_arr`
  - Convert the string to an array and iterate through the array
    - Fetch the value from the `string_digits` hash if the current string is a key in the hash and add it to `new_arr` else add the current string
  - Join `new_arr` to a string with a ' ' delimiter
=end

STRING_DIGITS = %w(zero one two three four five six seven eight nine).zip((0..9)).to_h

def word_to_digit(string)
  new_arr = string.split.map do |word|
      STRING_DIGITS.fetch(word, word)
  end
  new_arr.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'


