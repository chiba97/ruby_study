# %記法で文字列を作る
# %記法を使うとシングルクオートやダブルクオートをバックスラッシュでエスケープする必要がない

# %q!はシングルクオートで囲んだことと同じになる
puts %q!He said, "Don't speak."!

# ％Q!はダブルクオートで囲んだことと同じになる
something = "Hello."
puts %Q!He said, "#{something}"!

# %!もダブルクオートで囲んだことと同じになる
something = "Bye."
puts %!He said, "#{something}"!

# また「！」の区切り文字は　？、＾、<、{　も使える
puts %q{He said, "Don't speak,"}

# ヒアドキュメント（行指向文字列リテラル）
a = <<~TEXT
  これはヒアドミュメントです。
  複数行にわたる長い文字列を作成するのに便利です。
TEXT
puts a

# ヒアドキュメントを直接引数として渡す
a = "Ruby"
a.prepend(<<TEXT)
Java
Python
TEXT
puts a

# ヒアドキュメントを作成した文字列に足して、直接upcaseメソッドを呼び出す
b = <<TEXT.upcase
Hello.
Good,bye
TEXT
puts b

# ヒアドキュメントを二つ同時に使って配列を作る
c = [<<TEXT1, <<TEXT2]
Alice
Bob
TEXT1
Matz
Junichi
TEXT2
puts c[0]
puts c[1]

# sprintfメソッドを使いフォーマットを指定して文字列を作成する
# 以下は少数第三位まで数字を表示する文字列を作成する
puts sprintf('%0.3f', 1.2)
puts '%0.3f' % 1.2

# 表示したいオブジェクトを複数渡す
puts sprintf('%0.3f + %0.3f', 1.2, 0.48)
puts '%0.3f + %0.3f' % [1.2, 0.48]

# 数字を文字列に変換
puts 123.to_s

# 配列の各要素を連結して一つの文字列にする
puts [10,20,30].join

# *演算子を使って文字列を繰り返す
puts "Hi!" * 10


