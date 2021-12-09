currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee'}
currencies[:us]
currencies[:italy] = 'euro'

currencies = { japan: 'yen', us: 'dollar', india: 'rupee'}
currencies[:us]

# キーも値もシンボルの場合
currencies = { japan: :yen, us: :dollar, india: :rupee}

# キーに値が異なるデータ型を混在させる
hash = { 'abc' => 123, def: 456 }
puts hash
# 値を取得するときはデータ型を合わせる
hash['abc']
hash[:def]

# ハッシュに格納する値に関しては、異なるデータ型が混在するケースもよくある
person = {
  name: 'Alice',
  age: 20,
  friends: ['bob', 'carol'],
  phones: { home: '123-000', mobile: '4948-3383'}
}
puts person[:name]
puts person[:age]
puts person[:friends]
puts person[:phones][:mobile]

# キーワード引数
def buy_burger(menu, drink: true, potato: true)
  if drink
  end
  if potato
  end
end
buy_burger(cheese, dring: true, potato: false)

# デフォルト値を設定している場合は引数を省略することもできる
# デフォルト値を持たせない場合は省略不可
buy_burger('fish', potato: false)
buy_burger('fish')
# キーワード引数は呼び出し時に自由に順番を入れ替えることも可能
buy_burger('fish', potato: false, drink: true)

# **をつけることでハッシュを明示的にキーワード引数に変換させることもできる
params = { drink: true, potato: false }
buy_burger('fish', **params)