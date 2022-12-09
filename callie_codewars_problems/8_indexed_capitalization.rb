=begin
Given a string and an array of integers representing indices, capitalize all letters at the given indices.

The input will be a lowercase string with no spaces and an array of digits.
=end

=begin
P:
  Input: String and array of integers
  Output: String 

  Explicit requirements:
    - Given a string and an array of integers representing indices
    - capitalize all letters at the given indices

D:
  Input: String and array of integers
  Output: String 
  Intermediate: range

A: 
   - Iterate through a range from - to string.size - 1 
    - On each iteration, if the current number in the range is included in the array argument, capitalize the letter
  - Return the string
=end

def capitalize(string, ind)
  ind.each do |idx|
    string[idx] = string[idx].capitalize if string[idx]
  end
  string
end

# def capitalize(string, ind)
#   (0..string.size - 1).each do |idx|
#     string[idx] = string[idx].capitalize if ind.include?(idx)
#   end
#   string
# end

# def capitalize(string, ind)
#   hsh = s.each_char.with_index.to_h.invert
#   ind.each { |idx| hsh[idx] = hsh[idx].capitalize }
#   hsh.values.join
# end

p capitalize("abcdef",[1,2,5]) == 'aBCdeF'
p capitalize("abcdef",[1,2,5,100]) == 'aBCdeF'
p capitalize("codewars",[1,3,5,50]) == 'cOdEwArs'
p capitalize("abracadabra",[2,6,9,10]) == 'abRacaDabRA'
p capitalize("codewarriors",[5]) == 'codewArriors'
p capitalize("indexinglessons",[0]) == 'Indexinglessons'