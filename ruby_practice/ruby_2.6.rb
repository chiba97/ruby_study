# ーーーーーメソッドーーーーー
# rubyではdefを利用してメソッドを定義する
# rubyではreturnを使用しない方が主流
def greet(country)
  if country == "japan"
    puts "こんにちは"
  else
    puts "hello"
  end
end
greet("japan")
greet("us")

# 引数がない場合は（）ごと省略が可能
def greet
  "こんにちは"
end
puts greet