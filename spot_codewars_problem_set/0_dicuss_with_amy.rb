def sort_alike(string)
  groups = string.chars.group_by(&:upcase)
  groups.transform_values!(&:sort)
  groups.values.map(&:join).join
end

p sort_alike("AaBb")
p sort_alike("AaaaBbb")
p sort_alike("XxyYzZuUUU")