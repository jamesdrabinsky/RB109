=begin
Given two arrays a and b write a function comp(a, b) (orcompSame(a, b)) that checks whether the two arrays have the "same" elements, with the same multiplicities (the multiplicity of a member is the number of times it appears). "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.
=end

=begin
P:
  Input: two arrays
  Output: boolean

  Requirements:
    - Given two arrays
    - Return true if the elements in `b` are the elements in `a` squared, regardless of the order.
    - Otherwise, return false

A:

=end

def comp(a, b)
  return false if [a, b].any? { |arr| !arr.is_a?(Array) }

  [a, b].each(&:sort!)
  a.each_index.all? { |idx| a[idx]**2 == b[idx] }
end

def comp(a, b)
  a && b ? a.sort.map {|x| x ** 2} == b.sort : false
end

# def comp(a, b)
#   a.map! { |num| num**2 }
#   [a, b].each(&:sort!)

#   a.each_index do |idx|
#     return false if a[idx] != b[idx]
#   end
#   true
# end

p comp([121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) == true


