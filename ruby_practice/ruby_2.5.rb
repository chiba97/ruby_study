# ーーーーー真偽値ーーーーー

# &&は条件１も条件２も真であれば真、それ以外は偽
t1 = true
t2 = true
f1 = false
puts t1 && t2
puts t1 && f1

# &&は||よりも優先順位が高い
t1 = true
t2 = true
f1 = false
f2 = false
puts t1 && t2 || f1 && f2

# !を使うと真偽値を反転させることが可能
t1 = true
f1 = false
puts !t1
puts !f1

# ーーーーーif文ーーーーー

# 条件が真だった場合の処理
n = 11
if n > 10
  puts "10より大きい"
else
  puts "10以下"
end

# 国によって挨拶を変える
country = "italy"
if country == "japan"
  puts "こんにちは"
elsif country == "us"
  puts "Hello"
elsif country == "italy"
  puts "Ciao"
else
  puts "???"
end

# if文は修飾子（後置if）としても使うことができる
point = 7
day = 1
if day == 1
  point *= 5
end
puts point
# ↓
point = 7
day = 1
point *= 5 if day == 1
puts point

# ifとelsifの後ろにthenを入れることも可能（使用頻度は高くない）
country = "itary"
word = 
  if country == "japan" then "こんにちは"
  elsif country == "us" then "Hello"
  elsif country == "itary" then "Ciao"
  else "???"
  end
puts word

