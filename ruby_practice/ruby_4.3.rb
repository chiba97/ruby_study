# 繰り返し処理
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
# puts sum

# 配列の指定した値に一致する要素を削除する
a = [1, 2, 3, 1, 2, 3]
a.delete(2)
# puts a

# ブロックとdelete_ifメソッドを使用し奇数の値を削除する
a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
  n.odd?
end
# puts a

# 偶数のみ値を10倍にして、加算する
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  # sum_valueはブロック内で初めて登場した変数なので、スコープ（有効範囲）はブロック内のみになる
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
puts sum

# rubyのその他のブロックの記法
# 改行を含む長いブロックの場合はdo end , 一行でコンパクトに書く場合は {}　を用いる
numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
puts sum
# {}を使用しながらなおかつ改行も入れる
numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n|
  sum += n
}
puts sum

