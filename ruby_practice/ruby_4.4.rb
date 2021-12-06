# mapメソッド
numbers = [1, 2, 3, 4, 5]
# ブロックの戻り値が新しい配列に各要素になる
new_numbers = numbers.map { |n| n * 10}
puts new_numbers

# selectメソッド
numbers = [1, 2, 3, 4, 5]
# ブロックの戻り値が真になった要素だけが集められる
even_numbers = numbers.select { |n| n.even? }
puts even_numbers

# rejectメソッド
numbers = [1, 2, 3, 4, 5]
# ブロックの戻り値が偽になった要素だけが集められる
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
puts non_multiples_of_three

# findメッソド
numbers = [1, 2, 3, 4, 5]
# ブロックの戻り値が最初に真になった要素を返す
even_number = numbers.find { |n| n.even?}
puts even_number

# sumメッソド(合計値を求める)
numbers = [1, 2, 3, 4, 5]
puts numbers.sum
numbers = [1, 2, 3, 4, 5]
puts numbers.sum { |n| n * 2}

# 初期値で0以外の初期値をしていする
numbers = [1, 2, 3, 4]
puts numbers.sum(5)
# 数値以外に文字列を初期値に入れた場合は連結される
chars = ['a', 'b', 'c']
puts chars.sum('d')

# joinメッソド（配列の要素を連結して文字列にする）
chars = ['a', 'b', 'c']
puts chars.join
# 第一引数に区切り文字を指定することも可能
chars = ['a', 'b', 'c']
puts chars.join('-')

# joinメッソドで連結する場合はto_sで文字列にしてから連結するから数値など入っていても大丈夫
date = ['a', 8, 'sd']
puts date.join

# sumでブロック内で文字列を加工
chars = ['a', 'n', 'c']
puts chars.sum('>') { |n| n.upcase }

# &:を使いもっと簡潔に書く(メッソドで引数がなく、ブロックパラメーターが一つの時のみ使用可能)
puts ['ruby', 'java', 'php'].map { |n| n.upcase }
puts ['ruby', 'java', 'php'].map(&:upcase)