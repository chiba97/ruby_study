# 正規表現で文字検索
text = <<TEXT
I love Ruby
Python is a great language.
Java and Javascript are different.
TEXT
p text.scan(/[A-Z][A-Za-z]+/)
# 正規表現で置換
text = <<TEXT
私の郵便番号は1234566です。
僕の住所は6770056 兵庫県西脇市板波町1234だよ。
TEXT
puts text.gsub(/(\d{3})(\d{4})/) { "#{$1}-#{$2}" }

html = <<-HTML
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
HTML

replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')

puts replaced