# ガード式(パターンにマッチすることに加えて条件式も真になったら、処理が実行される)
# date = [[1, 2, 3], [5, 4, 6]]
# date.each do |numbers|
#   case numbers
#   in [a, b, c] if b == a + 1 && c == b + 1
#     puts "matched: #{numbers}"
#   else
#     puts "not matched: #{numbers}"
#   end
# end

# # 一行パターンマッチ（マッチすればtrue）
# # [1, 2, 3] in [Integer, Integer, Integer] => ture
# # [1, 2, 'x'] in [Integer, Integer, Integer] => false

# person = {name: 'Alice', children: ['Bob']}
# if person in {name:, children: [_]}
#   puts "Hello, #{name}!"
# end

# cars = [
#   {name: 'The Beatle', engine: '105ps'},
#   {name: 'Prius', engine: '98ps', motor: '72ps'},
#   {name: 'Tesla', motor: '306ps'}
#   ]
# cars.select do |car|
#   car in {name:, motor:}
# end

# {name: 'Alice', children: ['Bob']} => {name:, children: [child]}
# puts name
# puts child

# words = 'Ruby is fun!'
# words.split(' ').map { |word| word.upcase + '!' * 3 }.join(' ') => loud_voice
# puts loud_voice

# # 変数のスコープに関して
# name = 'Alice'
# case {name: 'Bob', age: 25}
# in {name:, age:}
#   puts "name=#{name}, age=#{age}"
# end
# puts name


# # 自作クラスをパターンマッチに対応させる
# class Point
#   def initialize(x, y)
#     @x = x
#     @y = y
#   end

#   def deconstruct
#     [@x, @y]
#   end

#   def deconstruct_key(_key)
#     {x: @x, y: @y}
#   end

#   def to_s
#     "x:#{@x}, y:#{@y}"
#   end
# end

# point = Point.new(10, 20)
# case point
# in [1, 2]
# in [10, 20]
#   puts "matched"
# end

# case point
# in {x: 1, y: 2}
# in {x: 10, y: 20}
#   puts "matched"
# end

# date.each do |obj|
#   case obj
#   in Point(10, 20)
#     puts "point=#{obj}"
#   in Arry(10, 20)
#     puts "point=#{obj}"
#   end
# end