=begin
Not to brag, but I recently became the nexus of the Codewars universe! My honor and my rank were the same number.
I cried a little.
Complete the method that takes a hash/object/directory/association list of users, and find the nexus: the user whose
rank is the closest is equal to his honor. Return the rank of this user. For each user, the key is the rank and the value is
the honor.
If nobody has an exact rank/honor match, return the rank of the user who comes closest. If there are several users who
come closest, return the one with the lowest rank (numeric value). The hash will not necessarily contain consecutive
rank numbers; return the best match from the ranks provided.

Example
rank honor
users = { 1 => 93,
10 => 55,
15 => 30,
20 => 19, <--- nexus
23 => 11,
30 => 2 }
=end

=begin
P:
  Input: hash
  Output: integer

  Requirements:
    - Given a hash of rank-honor key-value pairs
    - Return the rank of the user whose rank is closest to their honor
    - If there several who came closest, return the one with the lowest rank

D:
  Intermediate: hash

A:
  - Initialize an empty hash `diff`
  - Iterate through the hash argument
    - Populate `diff` with the key (rank) from the argument hash as the key and the ABSOLUTE difference between the key and value as the value

  - Sort the hash by values in ascending order
=end

def nexus(data)
  diff = data.each_with_object({}) do |(key, value), hash|
    hash[key] = (key - value).abs
  end

  min = diff.values.min
  diff.select { |_, v| v == min }.sort[0][0]
  # diff.min_by { |rank, diff| [diff, rank] }[0]
end

# p nexus({1 => 3, 3 => 3, 5 => 1}) == 3
# p nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1}) == 3
# p nexus({1 => 10, 2 => 3, 3 => 4, 5 => 1}) == 2




############################################################################

# require 'Date'

# dates = (Date.new(2022, 1, 1)..Date.new(2022, 6, 1)).map { |d| d.strftime('%Y-%m-%d') }
# cities = ["Paris", "London", "Tokyo"]
# weather = ["rain", "snow", "sunny"]
# temps = [*(0..100).step(20)]

# combos = 20.times.map do
#   [dates, cities, weather, temps].map(&:sample)
# end

# combos_hash = combos.each_with_object({}) do |(d, c, w, t), hash|
#   hash[d] = [c, w, t]
# end

# combos_hash.each do |key, arr|
#   puts "'#{key}'=>#{arr},"
# end

# Find the date with the max temperature.  If there are multiple
# date with the max temp, return the latest date.

data = {
  '2022-04-26'=>["Tokyo", "rain", 20],
  '2022-01-03'=>["Tokyo", "snow", 100],
  '2022-01-11'=>["Tokyo", "sunny", 100],
  '2022-05-14'=>["London", "snow", 100],
  '2022-03-17'=>["Paris", "sunny", 100],
  '2022-05-06'=>["Paris", "rain", 40],
  '2022-05-21'=>["Tokyo", "snow", 20],
  '2022-02-14'=>["London", "sunny", 100],
  '2022-04-28'=>["Paris", "rain", 20],
  '2022-01-30'=>["London", "rain", 40],
  '2022-01-24'=>["Tokyo", "sunny", 60],
  '2022-05-24'=>["Tokyo", "sunny", 20],
  '2022-03-27'=>["Paris", "rain", 40],
  '2022-04-08'=>["Tokyo", "snow", 100],
  '2022-02-07'=>["Paris", "rain", 80],
  '2022-01-20'=>["Tokyo", "rain", 20],
  '2022-02-08'=>["Tokyo", "snow", 40],
  '2022-05-29'=>["Tokyo", "rain", 40],
  '2022-05-07'=>["London", "sunny", 20],
}

