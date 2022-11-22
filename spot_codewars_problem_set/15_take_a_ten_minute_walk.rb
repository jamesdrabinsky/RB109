=begin

You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an
appointment, so you decided to take the opportunity to go for a short walk. 

The city provides its citizens with a Walk
Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings
representing directions to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block in a direction and you know it
takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you
will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point.
Return false otherwise.
Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It
will never give you an empty array (that's not a walk, that's standing still!).
=end

=begin
P:
  Input: array (of strings)
  Output: boolean

  Explicit requirements:
     - Given an array of single character string representing directions
     - Return true if
       - the walk will take 10 minutes and
       - it returns you to your starting point

D:
  Input: array (of strings)
  Output: boolean
  Intermediate: hash

A:
  - Build a hash with a letter count of all letters in array argument.
  - Return true if
     - All values are equal
     - The values sum to 10
  - Else return false

=end

def is_valid_walk?(directions)
  letter_count = directions.each_with_object(Hash.new(0)) do |letter, hash|
    hash[letter] += 1
  end

  letter_count.values.uniq.size == 1 && directions.size == 10
end

p is_valid_walk?(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk?(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk?(['w']) == false
p is_valid_walk?(['n','n','n','s','n','s','n','s','n','s']) == false