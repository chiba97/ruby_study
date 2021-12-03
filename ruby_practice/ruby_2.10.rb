# 真偽値と条件分岐についての戻り値と評価を終了するタイミング
# Alice,Bob,Carolと順に検索し、最初に見つかったユーザー（nilまたはfalse以外の値）を変数に格納する
# user = find_user('Alice') || find_user('Bob') || find_user('Carol')

# 正常なユーザーであればメールを送信する（左辺が偽であればメール送信は実行されない）
# user.valid? && send_email_to(user)

# orを使い制御フロー
def greet(country)
  # countryがnil(またはfalse)ならメッセージを返してメソッドを抜ける
  country or return "countryを入力してください"

  if country == "japan"
    "こんにちは"
  else
    "hello"
  end

end
puts greet(nil)
puts greet("japan")

# unless文
# elsifのようなものはない
status = "error"
unless status == "ok"
  puts "何か異常があります。"
end

status = "ok"
unless status == "ok"
  puts "何か異常があります。"
else
  puts "正常です。"
end

# 変数にif文同様に代入することも可能
status = "error"
message =
unless status == "ok"
  "何か異常があります。"
else
  "正常です。"
end
puts message

# 修飾子として使うことも可能
puts "何か異常があります。" unless status == "ok"

# thenを使うことも可能
status = "error"
unless status == "ok" then
  puts "何か異常があります。"
end

# unlessを無理に使わなくてもok
if status != "ok"
  puts "何か異常があります"
end

# ==trueや==falseは冗長なので使わない

s = ""
if s.empty?
  puts "空文字です"
end

n = 123
if !n.zero?
  puts "０ではありません。"
end

user = nil
if !user
  puts "nilです"
end
if user.nil?
  puts "nilです"
end

# case文
country = "us"
case country
when "japan"
  puts "こんにちは"
when "us"
  puts "hello"
else
  puts "???"
end

# when節に複数の値を指定する
country = "us"
case country
when "japan", "日本"
  puts "こんにちは"
when "us", "アメリカ"
  puts "hello"
else
  puts "???"
end

# case文もif文と同様に変数に代入することが可能
country = "italy"
message = 
case country
when "japan"
  "こんにちは"
when "italy"
  "ciao"
else
  "???"
end
puts message

# 条件演算子（三項演算子）?:を使った条件分岐
# 式　？　真だった時の処理　：　偽だった時の処理
n = 11
puts n > 10 ? "１０よりも大きい" : "１０よりも小さい"

# 変数に代入することも可能
n = 11 
message = n > 10 ? "１０よりも大きい" : "１０よりも小さい"
puts message

    