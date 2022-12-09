=begin
Your goal is to write the group_and_count method, which should receive an array as unique parameter and return a hash. Empty or nil input must return nil instead of a hash. This hash returned must contain as keys the unique values of the array, and as values the counting of each value.
=end

def group_and_count(arr)
  return false if  arr.nil? || arr.empty?

  arr.each_with_object(Hash.new(0)) do |num, hash|
    hash[num] += 1
  end
end

p group_and_count([0,1,1,0]) == { 0=>2, 1=>2 }
p group_and_count([1,1,2,2,2,3]) == { 1=>2, 2=>3, 3=>1 }