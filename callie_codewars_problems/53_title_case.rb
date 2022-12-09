=begin
A string is considered to be in title case if each word in the string is either (a) capitalised (that is, only the first letter of the word is in upper case) or (b) considered to be an exception and put entirely into lower case unless it is the first word, which is always capitalised.

Write a function that will convert a string into title case, given an optional list of exceptions (minor words). The list of minor words will be given as a string with each word separated by a space. Your function should ignore the case of the minor words string -- it should behave in the same way even if the case of the minor word string is changed.

Arguments (Other languages)
First argument (required): the original string to be converted.
Second argument (optional): space-delimited list of minor words that must always be lowercase except for the first word in the string. The JavaScript/CoffeeScript tests will pass undefined when this argument is unused.

Example
title_case('a clash of KINGS', 'a an the of') # should return: 'A Clash of Kings'
title_case('THE WIND IN THE WILLOWS', 'The In') # should return: 'The Wind in the Willows'
title_case('the quick brown fox') # should return: 'The Quick Brown Fox'
=end

=begin
P:
  Input: two strings
  Output: string

  Requirements:
    - Given a string and an optional list of space delimited exception words
    - Return the same string with all words capitalized.  
    - If the word is in the list of exceptions, it should be lowercased, except if it is the first word.

A:
  - Convert the string of exceptions into a list and assign it to a variable `exceptions`
  - Convert the first string argument to an array and iterate through it:
    - If the lowercased word is in the exceptions list then lowercase it
    - Else, capitalize all other words
  - Join the array into a string and return it
=end

def title_case(string, exc = "")
  exceptions = exc.split.map(&:downcase)

  capitalized = string.split.map do |word|
    exceptions.include?(word.downcase) ? word.downcase : word.capitalize
  end
  capitalized[0].capitalize! unless capitalized.empty?
  capitalized.join(' ')
end



def title_case(title, minor_words = '')
  title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')
end

p title_case('') == ''
p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'