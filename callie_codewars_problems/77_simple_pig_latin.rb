=begin
Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

Examples
pig_it('Pig latin is cool') # igPay atinlay siay oolcay
pig_it('Hello world !')     # elloHay orldway !
=end

=begin
P:
  Input: string
  Output: string

  Requirements:
    - Given a string
    - Move the first letter of each word to the end and then add "ay" to the end of the word
    - Leave punctuation marks untouched

A:
  - Convert the string into an array (#split) and iterate through it
    - Convert each word into an array and rotate it by 1, and push "ay" to the end of the array
=end

def pig_it(string)
  arr = string.split.map do |word|
    word =~ /[a-z]+/i ? word.chars.rotate(1) << "ay" : word.chars
  end
  arr.map(&:join).join(' ')
end

# def pig_it(string)
#   arr = string.split.map do |word|
#     word[1..] + word[0] + "ay"
#   end
#   arr.join(' ')
# end

p pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'
p pig_it('This is my string') == 'hisTay siay ymay tringsay'
p pig_it('Hello world !') == 'elloHay orldway !'