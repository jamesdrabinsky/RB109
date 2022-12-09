=begin
The input is a string str of digits. Cut the string into chunks (a chunk here is a substring of the initial string) of size sz
(ignore the last chunk if its size is less than sz).
If a chunk represents an integer such that the sum of the cubes of its digits is divisible by 2, reverse that chunk; otherwise
rotate it to the left by one position. Put together these modified chunks and return the result as a string.
If
sz is <= 0 or if str is empty return ""
sz is greater (>) than the length of str it is impossible to take a chunk of size sz hence return "".

Examples:
revrot("123456987654", 6) --> "234561876549"
revrot("123456987653", 6) --> "234561356789"
revrot("66443875", 4) --> "44668753"
revrot("66443875", 8) --> "64438756"
revrot("664438769", 8) --> "67834466"
revrot("123456779", 8) --> "23456771"
revrot("", 8) --> ""
revrot("123456779", 0) --> ""
revrot("563000655734469485", 4) --> "0365065073456944"
=end

=begin
P:
  Input: string and integer
  Output: string

  Requirements:
    - Given a string of digits and a number n
    - Cut the string into chunks of size n
      - If a chunk represents an integer such that the sum of the cubes of its digits is divisible by 2, reverse that chunk
      - Else rotate it to the left by 1
    - Concatenate these modified chunks and return the result as a string

A:
  - If n is 0 return ""
  - Break the string into chunks of size n
  - Select only the slices that are equal in size to n
  - Iterate over the valid slices
    - If a sub-array represents an integer such that the sum of the cubes of its digits is divisible by 2, reverse that chunk
       - Convert each string element to an integer, cube each integer and sum the array
    - Otherewise, take the element at index 0 and put it at the end of the sub_array
  - Concatenate all sub-arrays into a string and return the string
=end

def revrot(string, n)
  return "" if n == 0

  slices = string.chars.each_slice(n).select { |slice| slice.size == n }
  # slices = (0...str.size).step(5).map { |idx| str[idx...idx + 5].chars }..select { |slice| slice.size == n }
  
  slices.each_with_index do |slice, idx|
    if (slice.map(&:to_i).map { |i| i ** 3 }.sum % 2) == 0
      slices[idx] = slice.reverse
    else
      slices[idx] = slice[1..] + [slice[0]]
      # slices[idx] = slice.rotate(1)
    end
  end
  slices.join
end


p revrot("1234", 0) == ""
p revrot("", 0) == ""
p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"
p revrot("123456987654", 6) == "234561876549"
p revrot("123456987653", 6) == "234561356789"
p revrot("66443875", 4) == "44668753"
p revrot("66443875", 8) == "64438756"
p revrot("664438769", 8) == "67834466"
p revrot("123456779", 8) == "23456771"
p revrot("", 8) == ""
p revrot("123456779", 0) == ""
p revrot("563000655734469485", 4) == "0365065073456944"