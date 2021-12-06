# 範囲オブジェクト
# 最後の値を含む
# 1..5
# 最後の値を含まない
# 1...5

# 配列に対して添字の代わりに範囲オブジェクトを渡すと指定した範囲の要素を取得できる
a = [1, 2, 3, 4, 5]
# 2番目から４番目の要素を取得する
puts a[1..3]
a = 'abcdefg'
puts a[1..3]

# n以上m以下、n以上m未満の判定
def liquid?(temperature)
  puts (0...100).include?(temperature)
end
liquid?(2)

# case文で使用する
def charge(age)
  case age
    when 0..5
      puts 0
    when 6..12
      puts 300
    when 13..18
      puts 600
    else
      puts 1000
  end
end
charge(4)

# to_aメッソドを用いて連続する配列を作成する
puts (1..7).to_a
puts ('a'..'d').to_a
# *を用いて作成することも可能
puts [*'a'..'c']
puts [*1..8]

# 繰り返し処理
sum = 0
# 範囲オブジェクトに対して直接eachメッソドを用いる
(1..4).each { |n| sum += n }
puts sum

# ステップメッソドを呼び出すと、値を増やす感覚を指定できる
numbers = []
(1..10).step(3) { |n| numbers << n }
puts numbers