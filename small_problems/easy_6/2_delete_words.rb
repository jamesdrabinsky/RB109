=begin
Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.
=end

=begin
P:
  Input: array
  Output: array

  Explicit requirements:
    - Given an array of strings
    - Return an array of string with the vowels removed from the strings

D:
  Input: array
  Output: array

A:
  - Initialize an emptry array
  - Iterate through the argument array
    - Append each element with its vowels remove to the empty array
  - Return the populated array
=end

def remove_vowels(arr)
  # arr.map { |word| word.delete('aeiouAEIOU') }
  arr.map { |word| word.gsub(/[aeiou]/i, '') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


# p string.chars.all? { |char| char =~ /[a-z]/i } # case insensitive