=begin
Write a method to find the longest common prefix amongst an array of strings

If there is no common prefix, return an emptry string ""

Example 1:
Input: ["flower", "flow", "flight"]
Output: "f1"

Example 2:
Input: ["dog", "racecar", "car"]
Output: ""
=end

=begin
P:
  Input: array
  Output: string

  Explicit requirements:
     - Given an array of strings
     - Return the longest common prefix
     - If there is no common prefix return ''

A:
  - Initialize a variable `prefix` to an emptry string
  - Iterate through a range from 0 the string size of the first element (non-inclusive)
    - If all strings in the array (not including the first element) contain the same character at that index,
    append it to `prefix`
  - Return `prefix`
=end

def common_prefix(arr)
  prefix = ''
  (0...arr[0].size).each do |idx|
    current_char = arr[0][idx]
    if arr[1..].all? { |string| string[idx] == current_char }
      prefix << current_char
    else
      return prefix
    end
  end
  prefix
end

p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspace", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"