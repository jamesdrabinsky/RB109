def get_char_count(string)
  arr = string.downcase.chars.select { |char| char =~ /[a-z0-9]/ }
  count = Hash.new(0)

  arr.each do |char|
    count[char] += 1
  end

  groups = Hash.new { |h, k| h[k] = [] }

  count.each do |key, value|
    groups[value] << key
  end

  groups.transform_values(&:sort)
end

def get_char_count(string)
  select_chars = string.downcase.chars.select { |char| char =~ /[a-z0-9]/ }
  counts = {}

  select_chars.uniq.each do |char|
    counts[char] = select_chars.count(char)
  end

  groups = Hash.new { |h, k| h[k] = [] }
  counts.each_with_object(groups) { |(k, v), hash| hash[v] << k }.transform_values(&:sort)
end

def get_char_count(string)
  # string.downcase.delete('^a-z0-9')
  select_chars = string.downcase.chars.select { |char| char =~ /[a-z0-9]/ }
  select_chars.group_by { |char| select_chars.count(char) }.transform_values { |v| v.uniq.sort }
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}