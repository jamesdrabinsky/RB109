=begin
Background
There is a message that is circulating via public media that claims a reader can easily read a message where the inner
letters of each words is scrambled, as long as the first and last letters remain the same and the word contains all the
letters.

Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours
will be sorted alphabetically

Requirement
return a string where:
1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions
1) words are seperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation
for reference: http://en.wikipedia.org/wiki/Typoglycemia
=end

=begin
P:
  Input; string
  Outut: string

  Explicit requirements:
     - Given a string
     - Return a string where
       - the first and last characters remain in original place
       - character between first and last are sorted alphabetically
       - punctuation should remain at the same place as it started

D:
  Input; string
  Outut: string

A:
  - Initialize variable substring as the string argument from index 1 to index -2
  - Iterate through range from 1 to substring.size (non-inclusive) |idx1|
    - Iterate through range from idx + 1 to substring.size (non-inclusive)
      - If the character at idx1 is greater than the character at idx2
        - If neither character is punctuation, swap characterss
    - Return first character from string + modified substring + last character from string
=end

def scramble_words(string)
  return string if string.size <= 1

  substring = string[1..-2]

  (0...substring.size).each do |idx1|
    (idx1 + 1...substring.size).each do |idx2|
      if substring[idx1] > substring[idx2] && \
         [substring[idx1], substring[idx2]].all? { |char| char =~ /[a-z]/ }
        substring[idx1], substring[idx2] = substring[idx2], substring[idx1]
      end
    end
  end
  string[0] + substring + string[-1]
end

p scramble_words('-dcba')
p scramble_words('dcba.')

p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's
nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul
neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."