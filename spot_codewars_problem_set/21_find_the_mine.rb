=begin
You've just discovered a square (NxN) field and you notice a warning sign. The sign states that there's a single bomb in
the 2D grid-like field in front of you.
Write a function mineLocation/MineLocation that accepts a 2D array, and returns the location of the mine. The mine is
represented as the integer 1 in the 2D array. Areas in the 2D array that are not the mine will be represented as 0s.
The location returned should be an array (Tuple<int, int> in C#) where the first element is the row index, and the second
element is the column index of the bomb location (both should be 0 based). All 2D arrays passed into your function will
be square (NxN), and there will only be one mine in the array.
=end

=begin
P:
  Input: nested array
  Output: array

  Explicit requirements:
    - Given a 2D array
    - Return the location of the mine (1) where the first element is the row index
    and the second elemnent is the column index

D:
  Input: nested array
  Output: array

A:
  - Initialize an empty array
  - Iterate through the outer array with an index counter
     - Find which subarray contains the integer 1
     - Find the index position of 1 within that sub_array
  - Add both elements (outer index, inner index) to the empty array and return it
=end

def mine_location(arr)
  location = []
  arr.each_with_index do |sub_arr, i|
    if sub_arr.any? { |elem| elem == 1 }
      location << i << sub_arr.index(1)
    end
  end
  location
end

p mine_location( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mine_location( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mine_location( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mine_location([ [1, 0], [0, 0] ]) == [0, 0]
p mine_location([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mine_location([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]