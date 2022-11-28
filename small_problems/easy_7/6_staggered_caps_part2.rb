=begin
Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.
=end

=begin
P:
  Input: string
  Output: string

  Explicit requirements:
    - Given a string
    - Return a new string capitalizing every other character
A:
  - Convert the string to an array and iterate through the array with an index counter
     - Capitalize every character with a corresponding even index
  - Join array back to string with '' delimiter and return the new string
=end

def staggered_case(string)
  count = 0

  capitalized = string.chars.each_with_object([]) do |char, arr|
    if char =~ /[A-Z]/i
      count.even? ? arr << char.upcase : arr << char.downcase
      count += 1
    else
      arr << char
    end
  end
  capitalized.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'