currencies = { japan: 'yen', us: 'dollar', india: 'rupee'}
# p currencies.keys
# p currencies.values

# **を使いハッシュを展開させる
h = { us: 'dollar', indeia: 'rupee' }
q = { japan: 'yen', **h }
p q
# merge
i = { japan: 'yen' }.merge(h)
p i

# 任意のキーワードを受け付ける**引数
# 想定外のキーワードはothers引数で受け取る
def buy_burger(menu, drink: true, potato: true, **other)
  # p other
end
buy_burger('fish', salad: true, chiken: false)

# 最後の引数にハッシュがくれば省略できる
def buy_burger(menu, options = {})
  # puts options
end
buy_burger('fish', 'drink' => true, 'potato' => false)

# ハッシュから配列にする
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
# p currencies.to_a
# 配列からハッシュ
array = [[:japan, 'yen'], [:us, 'dollar'], [:india, 'rupee']]
p array.to_h

# Hashを使用する方法
array = [[:japan, 'yen'], [:us, 'dollar'], [:india, 'rupee']]
# p Hash[array]

# ハッシュのデフォルト値
h = Hash.new('hello')
a = h[:foo]
b = h[:bar]
puts a.equal?(b)
a.upcase!
puts a
puts b
p h

h = Hash.new { 'hello' }
a = h[:foo]
b = h[:bar]
puts a.equal?(b)
a.upcase!
puts a
puts b
p h

# ハッシュにデフォルト値と指定されたキーを同時に指定する
h = Hash.new { |hash, key| hash[key] = 'hello' }
h[:foo]
h[:bar]
p h

# キーワード引数を受けとらない
def foo(args, **nil)
  p args
end
foo(x: 1)