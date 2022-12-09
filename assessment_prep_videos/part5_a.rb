=begin
Find the length of the longest substring in the given string that is the same in reverse

As an example, if the input was "I like racecars that go fast", the substring (racercar) length would be 7

If the length of the input string is 0 return value 0.

Example:
"a" -> 1
"aab" -> 2
"abcde" -> 1
"zzbaabcd" -> 4
"" -> 0
=end

=begin
P:
  Input: string
  Output: integer

  Requirements:
     - Given a String
     - Return an integer representing the longest substring in the given string that is the same in reverse

A:
   - Initialize a variable `count` equal to 0
   - Iterate through a range from 0 to the string length (non-inclusive) |idx1|
    - Iterate through a range from idx1 to the string length (non-inclusive) |idx2|
      - Take a slice of the string from idx1 to idx2 (inclusive)
      - If this substring length is greater than `count` and it is the same in reverse
      then `count` equals the substring length
    - Return `count`
=end

def longest_palindrome(string)
  count = 0

  (0...string.size).each do |idx1|
    (idx1...string.size).each do |idx2|
      substring = string[idx1..idx2]
      count = substring.size if (substring.size > count) && \
                                (substring == substring.reverse)
    end
  end
  count
end

p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baablkj12345432133d") == 9