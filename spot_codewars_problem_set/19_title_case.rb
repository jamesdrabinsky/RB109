=begin
A string is considered to be in title case if each word in the string is either (a) capitalised (that is, only the first letter of
the word is in upper case) or (b) considered to be an exception and put entirely into lower case unless it is the first word,
which is always capitalised.
Write a function that will convert a string into title case, given an optional list of exceptions (minor words). The list of
minor words will be given as a string with each word separated by a space. Your function should ignore the case of the
minor words string -- it should behave in the same way even if the case of the minor word string is changed.
=end

=begin
P:
  Input: string
  Output: string

  Explicit requirements:
    - Given a string (title) and a second string (exceptions)
    - Return the first string argument with each word capitalized except for the words in the exception string

D:
  Input: string
  Output: string
  Intermediate: arrays 

A:
  - Initialize a variable that is equal to the second string argument converted into an array
  - Convert the first string argument into an array
  - Iterate through the first string array:
     - If the word is not in the exceptions array, capitalize it
     - Otherwise, do leave it as is 
     - Add each element to a new array
  = Return new array joined into a string with " "

=end

def title_case(string, except)
  exceptions = except.split

  string.split.map { |word| exceptions.include?(word) ? word : word.capitalize }.join(' ')
end


p title_case('a clash of KINGS', 'a an the of') # == 'A Clash of Kings'
# p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
# p title_case('the quick brown fox') == 'The Quick Brown Fox'