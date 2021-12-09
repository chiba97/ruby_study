# ハッシュ
{ 'japan' => 'yen', 'us' => 'dollar'}
{ 'japan' => 'yen',
  'us' => 'dollar'
}

# 要素を追加
currencies = { 'japan' => 'yen', 'us' => 'dollar'}
currencies['italy'] = 'euro'
p currencies

# 要素を上書き
currencies['japan'] = '円'
p currencies

# ハッシュを使った繰り返し処理
currencies = { 'japan' => 'yen', 'us' => 'dollar'}
currencies.each do |key, value|
  puts "#{key} : #{value}"
end

currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key} : #{value}"
end

s = { 'japan' => 'yen', 'us' => 'dollar'}.size
puts s

# 要素の削除
currencies = { 'japan' => 'yen', 'us' => 'dollar'}
currencies.delete('japan')
puts currencies

# ブロックを渡すとキーが見つからない時の戻り値を作成できる
currencies = { 'japan' => 'yen', 'us' => 'dollar'}
p currencies.delete('italy')
p currencies.delete('italy') { |key| "Not found: #{key}" }


