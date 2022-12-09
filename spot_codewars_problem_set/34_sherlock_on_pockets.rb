=begin
Sherlock has to find suspects on his latest case. He will use your method, dear Watson. Suspect in this case is a
person which has something not allowed in his/her pockets.
Allowed items are defined by array of numbers.
Pockets contents are defined by map entries where key is a person and value is one or few things represented by an
array of numbers (can be nil or empty array if empty), example:
pockets = {
bob: [1],
tom: [2, 5],
jane: [7]
}
Write amethod which helps Sherlock to find suspects. If no suspect is found or there are no pockets (pockets == nil), the
method should return nil.
=end

=begin
P:
  Input: array
  Output: array

  Requirements:
    - Given an array of allowed items
    - Return an array of people (keys in the `pockets` hash who have value arrays containing items that are illegal (not allowed).
    - If no people have illegal items, return nil

D:
  Intermediate: Array (of illegal items)

A:
  - Initialize an array illegal equal to an array of illegal items
    - Get the values from `pockets` into a one dimensional array
    - Select the items from the values list that are not in the argument array

  - Iterate through pockets key-value pairs
    - Return the keys (names) of all people whose associated value array contains ANY illegal items.
=end

pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 

def find_suspects(pockets, allowed)
  illegal = pockets.values.flatten.reject { |num| allowed.include?(num) }

  suspects = pockets.each_with_object([]) do |(name, items), arr|
    arr << name if items.any? { |num| illegal.include?(num) }
  end

  suspects.empty? ? nil : suspects
end

# def find_suspects(pockets, allowed)
#   illegal = pockets.values.flatten.reject { |num| allowed.include?(num) }

#   suspects = pockets.each_with_object([]) do |(name, items), arr|
#     if items.is_a?(Array)
#       arr << name if items.any? { |num| illegal.include?(num) }
#     end
#   end
#   suspects.empty? ? nil : suspects
# end

# def find_suspects(pockets, allowed_items)
#   suspects = pockets.select { |name, items| ([*items]-allowed_items).any? }.keys
#   suspects.any? ? suspects : nil
# end

p find_suspects(pockets, [1, 2]) == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
p find_suspects(pockets, [7]) == [:bob, :tom]

