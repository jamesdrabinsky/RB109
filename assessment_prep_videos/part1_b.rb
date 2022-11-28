=begin
Given an array of string made only of lowercase letters,
return an array of all characters that show up in all strings within the given array (including duplicates)
For example, if a character occurs 3 times in all string but not 4 times, you need to include that character 3 times in the final answer.  
=end

=begin
P:
  Input: array of strings
  Output: array of string or empty array

  Explicit requirements:
     - Given an array of strings only of lowercase characters
     - Return an array of all characters that show up in all string within the given array
     - If a character occurs 3 times in all strings, you need to include that character 3 times in the final return

D:
  Input: array of strings
  Intermediate: hash
  Output: array of string or empty array

A:
  - first method: letter_counts
     - Intialize an empty list `hashes`
     - Iterate through all strings in the argument array
      - Build a hash containing the letter counts for each string
  - Return the `hashes` array

  - second method: common_chars
     - Initialize an empty hash `final_hash` with a default value of an empty array
     - Iterate through the arr of hashes returned by letter_counts
       - If the current key exists in all hashes then add it to `final_hash` key's array
    - Once iteration is complete, iterate through the valus in `final_hash` and add the min value from each array
    the a final list 
=end

# def letter_counts(arr)
#   arr.map do |string|
#     string.chars.each_with_object(Hash.new(0)) do |char, sub_hash|
#       sub_hash[char] += 1
#     end
#   end
# end

# def common_chars(arr)
#   final_hash = Hash.new { |hash, key| hash[key] = [] }
#   hashes = letter_counts(arr)

#   hashes.each do |sub_hash|
#     sub_hash.each do |key, value|
#       final_hash[key] << value
#     end
#   end

#   final_hash.each_with_object([]) do |(key, value), final_arr|
#     value.min.times { final_arr << key } if value.size == arr.size
#   end
# end

# p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
# p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
# p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
# p common_chars(["aabbaaaa", "ccdddddd", "ggrrrrr", "yyyzzz"]) == []

############################################################################

# def commons(arr)
#   common_chars = arr[0].chars.select do |char|
#     arr.all? { |word| word.include?(char) }
#   end
#   common_chars.uniq
# end

# def common_chars(arr)
#   common_chars = commons(arr)
#   letter_counts = {}

#   arr.each do |string|
#     common_chars.each do |char|
#       if !letter_counts.key?(char)
#         letter_counts[char] = string.count(char)
#       elsif string.count(char) < letter_counts[char]
#         letter_counts[char] = string.count(char)
#       end
#     end
#   end
#   letter_counts.flat_map { |k, v| [k] * v }
# end

############################################################################

def common_chars(array)
  array = array.map(&:dup)

  array[0].chars.select do |char|
    array.all? { |word| word.sub!(char, '') }
  end
end

# p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
# p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
# p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
# p common_chars(["aabbaaaa", "ccdddddd", "ggrrrrr", "yyyzzz"]) == []


############################################################################


=begin
Given an array of string made only of lowercase letters,
return an array of all characters that show up in all strings within the given array (including duplicates)
For example, if a character occurs 3 times in all string but not 4 times, you need to include that character 3 times in the final answer.  
=end

=begin
  - Get a list of common characters
    - Iterate through the first string and check which characters occurs in all others strings
  
  - Initialize a dictionary with a letter count from the first string with only the common characters as keys
  - Iterate through the other strings
     - If the character count of any common characters from the other strings is less than the corresponding values in the letter count hash then replace the value
  
  - Add the hash keys two a new list n number of times (n being their values)
=end

# def get_common_chars(arr)
#   common = arr[0].chars.select do |char|
#       arr[1..].all? { |string| string.include?(char) }
#   end
#   common.tally
# end

def get_common_chars(arr)
  common = arr[0].chars.tally
  common.select! do |key, _|
    arr[1..].all? { |string| string.include?(key) }
  end
end

def common_chars(arr)
  count = get_common_chars(arr)

  count.each_key do |key|
    arr[1..].each do |string|
      current_count = string.count(key)
      count[key] = current_count if current_count < count[key]
    end
  end

  count.flat_map { |k, v| [k] * v }

    # count.each_with_object([]) do |(key, value), arr|
  #   value.times { arr << key }
  # end
end


# p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
# p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
# p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
# p common_chars(["aabbaaaa", "ccdddddd", "ggrrrrr", "yyyzzz"]) == []