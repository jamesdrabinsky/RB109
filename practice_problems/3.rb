# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

=begin
P:
  Input: string
  Output: string

  Requirements:
     - Given a string
     - Return the same sequence of characters with every 2nd character 
      in every third word converted to uppercase

D: Intermediate: array

A:
  - Initialize an empty array `arr`
  - Convert the string argument to an array
  - Iterate through the array with a counter (starting at 1)
      - If the counter is a multiple of 3 then capitalize every second character of the corresponding element in the array 
        - iterate through a range from 0 to the word length (non-inclusive)
          - Capitalize every odd-indexed character in the word
          - Append the word to `arr`
      - Else append the word to `arr`
  - Join the new array into a string with a " " delimiter
  - Return the string

=end

def to_weird_case(string)
  arr = string.split.map.with_index(1) do |word, idx|
    if (idx % 3 == 0) && (word.size > 1)
      (0...word.size).each { |idx| word[idx] = word[idx].upcase if idx.odd? }
    end
    word
  end
  arr.join(' ')
end

# Examples:

# p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

arr = [5, 25, 15, 11, 20]

min = arr.minmax.reduce(:-).abs
indexes = []

(0...arr.size).each do |idx1|
  (idx1 + 1...arr.size).each do |idx2|
    diff = (arr[idx1] - arr[idx2]).abs
    if diff < min
      min = diff
      indexes = [idx1, idx2]
    end
  end
end

p min
p arr.values_at(*indexes)