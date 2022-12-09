=begin
You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

Implement the function which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:
=end

=begin
P:
  Input: array
  Output: string

  Requirements:
    - Given an array of names
    - Return a string based on these criteria:
      - If array is empty, return "No one ..."
      - If array has one person return "{name} likes this"
      - If array has two people return "{name} and {name} like this"
      - If array has three people reutnr "{name}, {name} and {name} like this"
      - Else return "{name}, {name} and {number of people - 2} like this"

A:
  - First method: 
     - Return the fist part of the sentence
     - If array is empty return "no one"
     - If array has 1 - 2 people, join the two items with "and"
     - If array has 3 people, split the array into items with index < 2 and other and join the first two with "," and third with "&"
     - If > 3 people split the array into items with index < 2 and other.  Join the first two with "," and then concatenate "{second_arr.size} others like this"
=end

def likes(arr)
  if arr.empty?
      "no one likes this"
  elsif (1..2).include?(arr.size)
    names = arr.join(' and ')
    arr.size == 1 ? "#{names} likes this" : "#{names} like this"
  else
    first, last = arr.partition.with_index { |_, i| i < 2 }
    if arr.size == 3
      "#{first.join(', ')} and #{last[0]} like this"
    else
      "#{first.join(', ')} and #{arr.size - 2} others like this"
    end
  end
end

p likes([]) == 'no one likes this'
p likes(['Peter']) ==  'Peter likes this'
p likes(['Jacob', 'Alex']) == 'Jacob and Alex like this'
p likes(['Max', 'John', 'Mark']) == 'Max, John and Mark like this'
p likes(['Alex', 'Jacob', 'Mark', 'Max']) == 'Alex, Jacob and 2 others like this'

