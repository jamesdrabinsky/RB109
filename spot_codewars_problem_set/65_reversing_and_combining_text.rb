=begin
Your task is to Reverse and Combine Words. It's not too difficult, but there are some things you have to consider...

So what to do?
Input: String containing different "words" separated by spaces

1. More than one word? Reverse each word and combine first with second, third with fourth and so on...
   (odd number of words => last one stays alone, but has to be reversed too)
2. Start it again until there's only one word without spaces
3. Return your result...

Some easy examples:
Input:  "abc def"
Output: "cbafed"

Input:  "abc def ghi 123"
Output: "defabc123ghi"

Input:  "abc def gh34 434ff 55_eri 123 343"
Output: "43hgff434cbafed343ire_55321"
=end

=begin
P:
  Input: string
  Output: strng

  Requirements:
    - Given a string
    - Return the string according to the following rules
      - More than one word? Reverse each word and combine first with second, third with fourth and so on...

=end

def text_prep(string)
  slices = string.split.each_slice(2).map do |sub_arr|
    sub_arr.map(&:reverse)
  end
  slices.map(&:join).join(' ')
end

def reverse_and_combine_text(string)
  loop do
    break if string.split.size == 1

    string = text_prep(string)
  end
  string
end


p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"

result = "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == result

p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"