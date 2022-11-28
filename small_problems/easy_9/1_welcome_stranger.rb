=begin
Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. 

The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.
=end

=begin
P:
  Input: array and Hash
  Output:

  Explicit requirements:
    - Given an array and a hash
    - Output a string which combined the elements in the array
    and the values in the hash

A:
  - Initialize a variable `name` which is equal to the elements of the array argument joined into a String
  - Initialize two variables, `title` and `occupation` which are equal to the value in the hash argument
  - Insert these values into a string and output the string
=end

def greetings(arr, hash)
  name = arr.join(' ')
  title, occupation = hash.values

  puts "Hello, #{name}!  Nice to have a #{title} #{occupation} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."