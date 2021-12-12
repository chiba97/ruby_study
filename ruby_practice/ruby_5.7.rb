# %記法でシンボルやシンボルの配列を作成
p %s!ruby is fon!
p %s(ruby)
# シンボル配列の作成
p %i(apple orange melon)
# 改行や式展開を含める場合はIを用いる
name = 'Alice'
p %I(hello\ngood-bye #{name.upcase})

# シンボルと文字列の関係
string = 'apple'
symbol = :apple
p string == symbol

# 文字列をシンボルに変換
string = 'apple'
symbol = :apple
p string.to_sym == symbol

# シンボルを文字列に変換
p symbol.to_s == string

# オブジェクトに対して文字列またはシンボルで指定したメソッドが呼び出せるか
p 'apple'.respond_to?('include?')
p 'apple'.respond_to?(:include?)

p 'apple'.include?('pp')
# p 'apple'.include?(:pp) =>　エラーになる

# &.演算子
def find_currency(country)
  currencies = { japan: 'yen', us: 'dollar', india: 'rupee'}
  currencies[country]
end
def show_currency(country)
  currency = find_currency(country)
  currency&.upcase
end
puts show_currency(:japan)
# p show_currency(nil)

# nilガード(nillかfalseが入っている時に値を代入する)
limit = nil
limit ||= 10
# puts limit

limit = 20
limit ||= 10
# puts limit

limit = nil
limit ||= begin
  a = 10
  b = 20
  a + b 
end
# puts limit
