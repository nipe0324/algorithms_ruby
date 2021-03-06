def insert(array, pos, value)
  i = pos - 1
  while i >= 0 && array[i] > value
    array[i+1] = array[i]
    i -= 1
  end
  array[i+1] = value
end

def sort(array)
  (0..array.size-1).each do |i|
    insert(array, i, array[i])
    # debug
    printf("%2d : %s\n", i, array)
  end
  array
end

array = [15, 9, 8, 1, 4, 11, 7, 12, 13, 6, 5, 3, 16, 2, 10, 14]
sort(array)

# ソート
# 配列の前から整列領域が少しずつ増えていく
# 番号: 配列
#  0 : [15, 9, 8, 1, 4, 11, 7, 12, 13, 6, 5, 3, 16, 2, 10, 14]
#  1 : [9, 15, 8, 1, 4, 11, 7, 12, 13, 6, 5, 3, 16, 2, 10, 14]
#  2 : [8, 9, 15, 1, 4, 11, 7, 12, 13, 6, 5, 3, 16, 2, 10, 14]
#  3 : [1, 8, 9, 15, 4, 11, 7, 12, 13, 6, 5, 3, 16, 2, 10, 14]
#  4 : [1, 4, 8, 9, 15, 11, 7, 12, 13, 6, 5, 3, 16, 2, 10, 14]
#  5 : [1, 4, 8, 9, 11, 15, 7, 12, 13, 6, 5, 3, 16, 2, 10, 14]
#  6 : [1, 4, 7, 8, 9, 11, 15, 12, 13, 6, 5, 3, 16, 2, 10, 14]
#  7 : [1, 4, 7, 8, 9, 11, 12, 15, 13, 6, 5, 3, 16, 2, 10, 14]
#  8 : [1, 4, 7, 8, 9, 11, 12, 13, 15, 6, 5, 3, 16, 2, 10, 14]
#  9 : [1, 4, 6, 7, 8, 9, 11, 12, 13, 15, 5, 3, 16, 2, 10, 14]
# 10 : [1, 4, 5, 6, 7, 8, 9, 11, 12, 13, 15, 3, 16, 2, 10, 14]
# 11 : [1, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 15, 16, 2, 10, 14]
# 12 : [1, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 15, 16, 2, 10, 14]
# 13 : [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 15, 16, 10, 14]
# 14 : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 16, 14]
# 15 : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]