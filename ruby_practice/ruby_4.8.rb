# 添字付きの繰り返し処理
fruits = ['apple', 'orange', 'melon']
fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}"}

# each以外のwith_indexメソッドの組み合わせ
fruits = ['apple', 'orange', 'melon']
fruits.map.with_index { |fruit, i| puts "#{i}: #{fruit}" }

fruits.delete_if.with_index { |fruit, i| puts fruit.include?('a') && i.odd? }

fruits = ['apple', 'orange', 'melon']
p fruits.each

# 添字を0以外の数値から開始させる
fruits = ['apple', 'orange', 'melon']
fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}"}
fruits.map.with_index(10) { |fruit, i| puts "#{i}: #{fruit}" }

# 配列がブロックパラメーターに渡される場合
dimensions = [
    [10, 20],
    [30, 40],
    [50, 60]
  ]
areas = []
dimensions.each do |dimension|
  length = dimension[0]
  width = dimension[1]
  areas << length * width
end
puts areas

# ブロックパラメーターを2個にすると別々に受け取ることもできる
dimensions = [
    [10, 20],
    [30, 40],
    [50, 60]
  ]
areas = []
dimensions.each do |length, width|
  areas << length * width
end
p areas

# each_with_indexを使用する
dimensions = [
    [10, 20],
    [30, 40],
    [50, 60]
  ]
areas = []
dimensions.each_with_index do |(length, width), i|
  puts "length:#{length}, width:#{width}, i:#{i}"
end

# 入れ子になった配列を変数に代入
dimension, i = [[10, 20], 0]
p dimension
p i

(length, width), i = [[10, 20], 0]
p length
p width
p i

# 番号指定パラメーター
# 使用なし
['1', '2', '300'].map { |s| p s.rjust(3, '0') }
# 使用あり
['1', '2', '300'].map { p _1.rjust(3, '0') }
['japan', 'us', 'italy'].map.with_index { |country, n| p [n, country] }
['japan', 'us', 'italy'].map.with_index { p [_2, _1] }

x = [
    [10, 20],
    [10, 40],
    [10, 30]
  ]
  x.each { p _1 }

  x.each { p "#{_1} / #{_2}" }

# ブロックが入れ子になっている場合は番号パラメーターの使用
sum = 0
[[1, 2, 3],[1, 2, 3]].each do |values|
  values.each do
    sum += _1
  end
end
puts sum

# ブロックローカル変数
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n; sum|
  sum = 10
  sum += n
  puts sum
end
puts sum

# 繰り返し処理以外でも使用されるブロック
# sample.txtを開いて文字列を書き込む
File.open('./sample.txt', 'w') do |file|
  file.puts('1行目のテキストです。')
  file.puts('2行目のテキストです。')
end

# ブロックの後ろに別のメソッドを続けて書く
names = ['田中', '鈴木', '佐藤']
puts names.map { |name| "#{name}さん" }.join('と')
# endのうしろに直接書く方法もある（読みづらい為あまり使わない）
names = ['田中', '鈴木', '佐藤']
n = names.map do |name|
  "#{name}さん"
end.join('と')
puts n
