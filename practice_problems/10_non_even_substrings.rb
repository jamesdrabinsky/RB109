=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7
=end

=begin
P:
  Input: string
  Output: integer

  Requirements:
    - Given a string of integers
    - Return the number of odd substrings that can be formed

D:
  Intermediate: sub-arrays

A:
  - Initialize a variable `count` equal to 0

  - Iterate through a range from 0 to string length (non-inclusive) |idx1|
    - Iterate through a range from idx1 to string length (non-inclusive) |idx2|
      - Initialize a variable `substring` equal to string[idx1..idx2]
      - If the string converted to an integer is odd, increment `count` by 1
  - Return `count`
=end

def solve(string)
  count = 0

  (0...string.size).each do |idx1|
    (idx1...string.size).each do |idx2|
      substring = string[idx1..idx2]
      count += 1 if substring.to_i.odd?
    end
  end
  count
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28