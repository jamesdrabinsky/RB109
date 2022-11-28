def merge(arr_1, arr_2)
  arr_1 | arr_2
end

def merge(arr_1, arr_2)
  new_arr = arr_2.reject { |elem| arr_1.include?(elem) }
  arr_1 + new_arr
end


p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]