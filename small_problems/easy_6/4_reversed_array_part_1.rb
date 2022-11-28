=begin
Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.
=end

=begin
P:
  Input: array
  Output: same array (reversed)

  Explicit requirements:
    - Given an Array
    - Reverse its elements in place

D:
  Input: array
  Output: array

A:
   [1, 2, 3, 4]
   [2, 1, 3, 4]
   [2, 3, 1, 4]
   [2, 3, 4, 1]

   - Iterate through a range from 0 to the array length (non-inclusive) |idx|
    - Iterate through a rangre from idx + 1 to the array length (non-inclusive) |idx2|
      - If the element at idx1 is less than the element at idx2, swap them
   - Return the original array with its elements reversed
=end

# def reverse!(arr)
#   (0...arr.size).each do |idx1|
#     (idx1 + 1...arr.size).each do |idx2|
#       if arr[idx1] < arr[idx2]
#         arr[idx1], arr[idx2] = arr[idx2], arr[idx1]
#       end
#     end
#   end
#   arr
# end

def reverse!(arr)
  mid = arr.size / 2
  count = 0

  loop do 
    break if count >= mid
    arr[count], arr[-(count + 1)] = arr[-(count + 1)], arr[count]
    count += 1
  end
  arr
end

# arr.each_with_index do |_, idx|
#   arr[idx], arr[-(idx+1)] = arr[-(idx+1)], arr[idx] if idx < arr.size / 2
# end


list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true