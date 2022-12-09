=begin
Given a string, return a new string that has transformed based on the input:

Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.
Note: You will have to handle multiple spaces, and leading/trailing spaces.

For example:

"Example Input" ==> "iNPUT eXAMPLE"
You may assume the input only contain English alphabet and spaces.
=end

=begin
P:
  Input: string
  Output: string

  Requirements:
    - Given a string
    - Return a transformed string that:
       - Swaps the cases of every letter in each word
       - Reversesd the order of the words

A:
  - Convert the word into an array, reverse it, and iterate through the array
    - Swap the cases of every letter in each word
  - Join the array back into a string with a " " delimiter
=end

def string_transformer(string)
  string.split.reverse.map(&:swapcase).join(' ')
end

def string_transformer(string)
  arr = string.split.reverse.map do |word|
    (0...word.size).map do |idx|
      word[idx] =~ /[A-Z]/ ? word[idx].downcase : word[idx].upcase
    end
  end
  arr.map(&:join).join(' ')
end

def string_transformer(string)
  arr = string.split.reverse.map do |word|
    empty_str = ''
    word.chars.each do |letter|
      if letter =~ /[A-Z]/
        empty_str += letter.downcase
      else
        empty_str += letter.upcase
      end
    end
    empty_str
  end
  arr.join(' ')
end

def string_transformer(str)
  str.split(/\b/).reverse.map(&:swapcase).join
end

p string_transformer('Example string') #== 'STRING eXAMPLE'