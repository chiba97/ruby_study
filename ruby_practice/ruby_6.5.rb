# 正規表現作成時のオプション
# iオプション　大文字と小文字を区別しない
p 'HELLO' =~ /hello/i

regexp = Regexp.new('hello', Regexp::IGNORECASE)
p 'HELLO' =~ regexp

# mオプションで.が改行文字にもマッチするようになる
p 'Hello\nBye' =~ /Hello.Bye/

p 'Hello\nBye' =~ /Hello.Bye/m

# xオプションで改行やスペースが無視され、コメントが書ける
regexp = /
  \d{3} #郵便番号３桁
  -　　 #区切り文字
  \d{4} #郵便番号４桁
/x
p '123-4567' =~ regexp

# iとmオプションを一緒に使用する
p "HELLO\nBYE" =~ /Hello.Bye/im

# 組み込み変数を書き換えないmatch?メソッド
# マッチすればtrueを返す
/\d{3}-\d{4}/.match?('123-4566')
'123-3445'.match?(/\d{3}-\d{4}/)
