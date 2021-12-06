# 要素入れ替え
a = [1, 2, 3]
a[1] = 20
# puts a

# << を使うと配列の最後に要素を入れられる
a = []
a << 1
a << 2
a << 12
# puts a

# 配列内の特定の要素を削除したい時(delete_atメソッドを使用)
a = [1, 2, 3]
a.delete_at(1)
# puts a

#配列の多重代入を使う
# divmodメソッドは商と余りを配列として返す
puts 14.divmod(3)
# 戻り値を配列のままに受け取る
quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"
# 多重代入で別々の変数のまま受け取る
quotient, remainder = 14.divmod(3)
puts "商=#{quotient}, 余り=#{remainder}"
