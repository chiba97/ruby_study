# パターンマッチの利用パターン
# value
country = 'italy'
message =
  case country
  in 'japan'
    "こんにちは"
  in 'us'
    "Hello"
  in 'italy'
    "Cial"
  end
puts message

value = "abe"
case value
  in Integer
    puts "整数です"
  in String
    puts "文字列です"
end

country = 'india'
  case country
    in 'japan'
      puts "こんにちは"
    in 'us'
      puts "Hello"
    in obj
      puts "Unknown: #{obj}"
  end

# variable
alice = 'Alice'
bob = 'Bob'
name = 'Bob'
# ピン演算子を使って事前に定義した変数を参照する
case name
  in ^alice
    puts "Aliceさんこんにちは"
  in ^bob
    puts "ボブさんこんにちは"
end

records = [
  [7, 7, 7],
  [6, 8, 9]
]
records.each do |record|
  case record
    in [n, ^n, ^n]
      puts "all same: #{record}"
    else
      puts "not same: #{record}"
  end
end

records = [
  [Integer, 1, 2],
  [Integer, 3, 'x']
  ]
records.each do |record|
  case record
    in [klass, ^klass, ^klass]
      puts "match: #{record}"
    else
      puts "not match: #{record}"
  end
end

# array
case [1, [2, 3]]
  in [a, [b, c]]
    puts "a=#{a}, b=#{b}, c=#{c}"
end
# マッチ判定には＝＝＝が使用される
case ['Alice', 999, 3]
  in[String, 10..., n]
    puts "n=#{n}"
end

case [1, 1, 3]
  in [a, ^a, 3]
    puts "a=#{a}"
end

# _は任意の要素を表現する、ただし変数としては使わないことが前提
case [1, 2, 3]
  in[_, _, 3]
    puts "matched"
end

# ＊で任意の長さの要素を指定したことになる
# in節の一番外側の[]は省略可能
case [1, 2, 3, 4, 5]
  in 1, *rest
    puts "rest=#{rest}"
end

# hash
case {name: 'Alice', age: 20, gender: :female}
  in {name: 'Alice', age: 18.., gender:}
  puts "gender = #{gender}"
end

case {name: 'Alice', children: ['bob']}
  in {name:, children: [child]}
  puts "name = #{name}, child = #{child}"
end

# **nilは:name以外のキーがないことが条件
# in節の一番外側の{}は省略可能
case {name: 'Alice'}
  in name:, **nil
  puts "name=#{name}"
end

# in節に書くのはあくまでパターンということを念頭におく！！
# パターンとしては有効だけども配列またはハッシュリテラルとしては無効
# in 1, 2, 3
# in x:, y:

# asパターン
case {name: 'Alice', age: 20, gender: :female}
  in {name: String => name, age: 18.. => age}
  puts "name=#{name}, age=#{age}"
end
case {name: 'Alice', age: 20, gender: :female}
  in {name: String => name, age: 18.. => age} => parson
  puts "person=#{parson}"
end

# alternative
case 2
in 0 | 1 | 2
 puts "matched"
end

case {name: 'Bob', age: 20}
in {name: 'Alice' | 'Bob' => name, age:}
 puts "name=#{name}, age=#{age}"
end

case [2021, 4, 1]
in [Integer, Integer, Integer] | Date => obj
  puts "obj=#{obj}"
end

# find(ruby3.0から実験的機能として導入、そのため警告が出る)
case [13, 11, 9, 6, 12, 10, 15, 5, 7, 14]
in [*, 10.. => a, 10.. => b, 10.. => c, *]
  puts "a=#{a}, b=#{b}, c=#{c}"
end

case [1, 2, 3, 4]
in [*, 2, *] => a
  puts "a=#{a}"
end


