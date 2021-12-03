# メソッドを定義する際に引数にデフォルトをつける
def greet(country = "japan")
  if country == "japan"
    "こんにちは"
  else
    "hello"
  end
end
puts greet
puts greet("us")

# デフォルトありとなしの引数を混在させることも可能
def default_args(a, b, c = 0, d = 0)
  "a＝#{a}、 b＝#{b}、 c＝#{c}、 d＝#{d}"
end
puts default_args(1, 2)
puts default_args(1, 2, 3)
puts default_args(1, 2, 3, 4)

# デフォルト値には固定の値だけでなく、動的に変わる値や、他のメソッドの戻り値を指定することもできる
def foo(time = Time.now, message = bar)
  puts "time：#{time}、messge：#{message}"
end
def bar
  "BAR"
end
foo

# デフォルト値には左にある引数を指定することも可能
def point(x, y = x)
  puts "x=#{x}, y=#{y}"
end
point(3)
point(3, 10)

# 述語メソッド
# 空文字であればtrue、それ以外はfalse
puts "".empty?
puts "abc".empty?

# 引数の文字が含まれていればtrue、それ以外はfalse
puts "watch".include?("at")
puts "watch".include?("in")

# 奇数ならtrue、それ以外はfalse
puts 1.odd?
puts 2.odd?

# 偶数ならtrue、それ以外false
puts 1.even?
puts 2.even?

# オブジェクトがnilであればtrue、それ以外はfalse
puts nil.nil?
puts "abc".nil?
puts 1.nil?

# 3の倍数ならtrue、それ以外はfalse(自分で作ることも可能、真偽値を求めるメソッドを作る場合は？で終わらせた方がいい)
def multiple_of_three?(n)
  n % 3 == 0
end
puts multiple_of_three?(3)
puts multiple_of_three?(4)
puts multiple_of_three?(6)

# !で終わるメソッドを破壊的メソッドと呼ぶ（呼び出したオブジェクトの状態を変更してしまう）
a = "ruby"
# upcaseだと変数のaの値は変化しない
puts a.upcase
puts a

# upcase!だと変数のaの値も大文字に変わる
puts a.upcase!
puts a

# ！も自分でメソッドを定義することが可能
def reverse_upcase!(s)
  s.reverse!
  s.upcase!
  s
end
s = "ruby"
puts s
puts reverse_upcase!(s)
puts s

# エンドレスメソッド定義（ruby3.0で導入された実験的な機能）
def greet
  "hello"
end
puts greet

# 下記のように省略可能（実験的だからあまり使わない方が良い）

def greet = "hello"
puts greet