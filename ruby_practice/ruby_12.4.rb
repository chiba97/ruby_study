# debug
# def to_hex(r, g, b)
#   [r, g, b].sum('#') do |n|
#     puts n
#     n.to_s(16).rjust(2, '0')
#   end
# end
# puts to_hex(1, 2, 3)

# def greet(country)
#   puts 'greet start.'
#   return 'countryを入力してください' if country.nil?
  
#   if country == 'japan'
#     puts 'japan'
#     'こんにちは'
#   else
#     puts 'other'
#     'hello'
#   end
# end
# puts greet('india')
# puts greet(nil)

# # tapメソッド
# # ブロックパラメーターにレシーバをそのまま返す
# # 結果はtapメソッドがない時と同様になる
# '043c78'.scan(/\w\w/).tap { |rgb| p rgb }.map(&:hex)


