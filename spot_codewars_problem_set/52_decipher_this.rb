=begin
You are given a secret message you need to decipher. Here are the things you need to know to decipher it:
For each word:
the second and the last letter is switched (e.g. Hello becomes Holle)
the first letter is replaced by its character code (e.g. H becomes 72)
Note: there are no special characters used, only letters and spaces

Examples
decipherThis('72olle 103doo 100ya'); // 'Hello good day'
decipherThis('82yade 115te 103o'); // 'Ready set go'
=end

=begin
P:
  Input: string
  Output: string

  Requirements:
    - Given a string
    - Return the same string according to the following rules:
      - For each word: 
        - the second and the last letter is switched (e.g. Hello becomes Holle)
        - the first letter is replaced by its character code (e.g. H becomes 72)

A:
  - Find the digits in each string
  - Convert them to integer
  - Find the integer's corresponding alphabtic character

  - Swap the first and last characters in the letters portion of the string
  - Concatenate the number to the letters
=end

def decipher_this(string)
  arr = string.split.map do |word|
    digits, letters = word.chars.partition { |char| char =~ /[\d]/i }
    # digits, letters = word.chars.partition { |char| char =~ /[^a-z]/i }
    number = digits.join.to_i.chr
    letters[0], letters[-1] = letters[-1], letters[0]
    number + letters.join
  end
  arr.join(' ')
end


p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"
