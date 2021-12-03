require 'date'
# 参照の概念
# aとbはどちらもおなじ文字列だが、オブジェクトとしては別物
a = "hello"
b = "hello"
c = "chao"
puts a.object_id
puts b.object_id

# cにbを代入する。そうするとどちらも同じオブジェクトになる
c = b
puts c.object_id

# メソッドの引数にcを渡す。引数として受け取ったdはb、cと同じオブジェクトを参照している
def m(d)
  d.object_id
end
puts m(c)

# b,cは同じオブジェクト、aは異なるオブジェクト
a = "hello"
b = "hello"
c = b
# 渡された文字を破壊的に大文字にするメソッドを定義する
def m!(d)
  d.upcase!
end
m!(c)
# b,cはいずれも大文字になる
puts b
puts c
# aは別のオブジェクトなので大文字にならない
puts a

# 標準ライブラリを使う場合はrequire(上に記載)で読み込む
puts Date.today

