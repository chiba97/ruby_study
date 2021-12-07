# 要素を取り出す
a = [1, 2, 3, 4, 5]
# puts a[1, 3]

# 指定したい要素のみ複数指定
a = [1, 2, 3, 4, 5]
# puts a.values_at(0, 2, 3)

# 最後の要素を取得
a = [1, 2, 3, 4, 5]
# puts [a.size - 1]

# 添字に-を使用する
a = [1, 2, 3]
# puts a[-1]
# puts a[-2]
# puts a[-2, 2]

# lastメッソドを使用して指定
a = [1, 2, 3]
# puts a.last
# puts a.last(3)

# firstメッソドを使用して指定
a = [1, 2, 3]
# puts a.first
# puts a.first(3)

# 変更方法
a = [1, 2, 3]
a[-3] = -10
# puts a

a = [1, 2, 3, 4, 5]
a[1, 3] = 100
# puts a

# pushメッソドを使って代入
a = []
a.push(1)
a.push(2, 3)
# puts a

# 指定した値に一致する要素を削除
a = [1, 2, 3, 1, 2, 3]
a.delete(2)
# puts a

# 配列の連結(破壊的メッソド)
a = [1]
b = [1, 2]
# puts a.concat(b)
# puts a
# bは変更されない
# puts b

# 配列の連結(aもbも破壊されない)
a = [1]
b = [2, 3]
# puts a + b

# 和集合 | 、差集合 - 、積集合 &
a = [1, 2, 3]
b = [3, 4, 5]
# puts a | b

# puts a - b

# puts a & b

# Setクラスを用いて本格的に集合演算
require 'set'

a = Set[1, 2, 3]
b = Set[3, 4, 5]
# puts a & b
# puts a | b
# puts a - b

# 多重代入により全ての要素を受けとる、または代入する
e, *f = 100, 200, 300
puts e
puts f

e, * = 100, 200, 300
# puts e
e, = 100, 200, 300
# puts e

a, *b, c, d = 1, 2, 3, 4, 5
puts a
puts b
puts c
puts d

# 配列の中に代入したい配列を展開して複数の引数として渡す
a = []
b = [2, 3]
a.push(1)
puts a.push(*b)

jp = ['japan', '日本']
country = '日本'
case country
when *jp
  puts 'こんにちは'
end

# メッソドの可変長引数
def foo(a, *b, c, d)
  puts "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end
foo(1, 2, 3, 4, 5, 6)

# *を使い配列同士で非破壊的に連結する
a = [1, 2, 3]
puts [-1, 1, 2, 3, *a, 4]

# ＝配列が等しいか確認
puts [1, 2, 3] == [1, 2, 3]

# %を用いて配列を作る
puts %w! apple melon orange !
puts %w(apple melon orenge)
puts %w! apple\ cake orange\ cake!

# 式展開や改行文字を用いる場合
prefix = "this is"
puts %W( #{prefix}\ apple\n melon\n orange)

# 文字列を配列に変換する
puts 'Ruby'.chars
puts 'Ruby,Java,Python'.split(',')

# 配列にデフォルト値を渡す
# ブロックパラメーターには要素の添字が渡されている
a = Array.new(10) { |n| n + 1 }
puts a