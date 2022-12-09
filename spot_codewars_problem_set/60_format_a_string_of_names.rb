=begin
Given: an array containing hashes of names

Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

Example:

list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

list([ {name: 'Bart'} ])
# returns 'Bart'

list([])
# returns ''
=end

=begin
P:
  Input: hash
  Output: string

  Requirements:
    - Given a hash of names
    - Return a string formatted as a list of names separated by commas, except for the last two names, which should be separated by ampersand.

A:
  - Get a list of values from the argument hash
=end

def list(arr)
  names = arr.flat_map(&:values)
  first, last = names.partition.with_index { |_, i| i < arr.size - 2 }
  first.empty? ? last.join(" & ") : [first.join(', '), last.join(" & ")].join(', ')
end

p list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]) ==
'Bart, Lisa, Maggie, Homer & Marge'

p list([{name: 'Bart'},{name: 'Lisa'}]) == 'Bart & Lisa'

p list([{name: 'Bart'}]) == 'Bart'