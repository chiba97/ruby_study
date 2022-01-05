# input_line = gets.to_i
# input_line.times do
#   s = gets.chomp.split(" ")
#   print "hello = #{ s[0] } , world = #{ s[1] }\n"
# end
# n = gets
# puts n
# input = "1 2 3 4 5"
# a = input.split(" ")
# p a[3]

# input = "1926 1930 1959 1938"
# years = input.split(" ")
# showa = []
# years.each do |year|
#   showa << year.to_i - 1925
# end
# puts showa

# input = "1926 1930 1959 1938"
# years = input.split(" ").map { |year| year.to_i - 1925 }
# puts years
# puts years.join(",")
# puts [1, 2, 3] + [4]
# puts [1, 2, 3] - [2]
# puts [1, 2, 3, 4, 4].uniq

# input = "2,3,4,6,8,9,10"
# array = input.split(",")
# array2 = array.map { |n| n.to_i }
# odd = array2.select { |n| n.odd? }
# p odd
# even = array2.select { |n| n.even? }
# p even

# class People
#   attr_accessor :english, :math, :japanese

#   def initiaize(scores)
#     scores = scores.split(",").map{ |score| score.to_i }
#     self.max = score.max
#     self.english = scores[0]
#     self.math = scores[1]
#     self.japanese = scores[2]
#   end
# end

# input = "80,50,20 86,54,23 67,33,44"
# input = input.split(" ")
# max_scores = input.map { |scores| People.new(scores).max_score }
# puts max_scores

# トリボナッチ数列の学習
# a, b, c = 1, 3, 7
# (50-1).times {a, b, c = b, c, a + b + c}
# p a

# def toribonacci(n)
#     a, b, c = 0, 0, 1
#     (n - 1).times { a, b, c = b, c, a + b + c }
#     a
# end
# puts "何項目の値を知りたいですか？"
# n = gets.to_i
# if n >= 1
#   p "第#{n}項目の値は#{toribonacci(n)}です。"
# else
#   puts "1以上の値を入力してください。"
# end

# def toribonacci(n)
#   result = []
#   a, b, c = 0, 0, 1
#   (n).times { a, b, c = b, c, a + b + c, result << a }
#   p result.join(" ")
# end
# puts "何項目まで値を出したいですか？"
# n = gets.to_i
# if n >= 1
#   toribonacci(n)
# else
#   puts "1以上の値を入力してください。"
# end

# 約数(合計値と値の合計数を求める計算)
# def divisor(num)
#   (1..num).select { |e| num % e == 0 }
# end

# puts "約数を算出したい整数を入力してください"
# num = gets.to_i
# r = divisor(num).join(" ")
# puts r
# puts "約数の数は#{r.length}です"
# puts "約数の合計は#{r.sum}です"

# ピタゴラスの定理公式
# a² + b² = c²
# a = m² - n² または n² - m²
# b = 2mn
# c = m² + n²

# 以下aarayメソッド殴り書き
# puts [1, 2, 3, 1, 2, 1, 2, 6, 5, "ruby","python","ruby"].uniq

# array = ["ruby", nil, "java", nil, nil, "python"].join(" ")
# p array.gsub("nil", "").split(" ")
# array = ["ruby", nil, "java", nil, nil, "python"].compact
# p array
# array = [["php", "java", "ruby", "python"],["バージョン3","バージョン2","バージョン1","バージョン0.1"]]
# p array.transpose

# array = ["ruby", "python", "java"]
# num = [1, 2, 3]
# p array.zip(num)

# num = [3, 4, 2, 5]
# p num.sort
# p num.take(2)

# str = ["mikki", "makabe", "yuka"]
# array = str.map { |s| s.upcase }
# p array

# "1:牛丼"
# "2:豚丼"
# "3:カツ丼"
# array =["牛丼","豚丼","カツ丼"]
# array.each_with_index  do |a,i|
#   #ここに処理を記載
#   puts "#{i + 1}：#{a}"
# end

# 3で割り切れる数のみ抽出
# array =[20, 21, 22, 23, 24, 25, 26]
# n = array.select { |num| num % 3 == 0 }
# p n

# # 3で割り切れない値を抽出
# array =[20, 21, 22, 23, 24, 25, 26]
# n = array.select { |num| num % 3 != 0 }
# p n
# # もしくは
# array =[20, 21, 22, 23, 24, 25, 26]
# n = array.reject { |num| num % 3 == 0 }
# p n

# prices = { "ほうれん草" => 150, "じゃがいも" => 190, "牛肉" => 200,"ねぎ"=> 100}
# n = prices.delete_if { |key, value| value < 180 }
# p n

# prices = { "ほうれん草" => 150, "じゃがいも" => 190, "牛肉" => 200,"ねぎ"=> 100}
# n = prices.select { |key, value| value > 180 }
# p n


# 1に囲まれている0を正規表現で探す
# def solution(n)
#     list = n.to_s(2).scan(/1(0+)(?=1)/).flatten.map(&:length)
#     puts list.empty? ? 0 : list.max
# end
# solution(529)

# aの配列の要素ははk回右にずれる
# def solution(a, k)
#     a.rotate(-k)
# end
# b = [3, 4, 5]
# p solution(b, 4)

# 配列の重複の値を挿入する
# def solution(a)
#     a.inject(:^)
# end
# a = [9, 3, 9, 3, 9, 7, 9]
# p solution(a)

# x地点からy地点までの移動回数（一回移動するごとにd移動）
# def solution(x, y, d)
#     ((y-x)/(d.to_f)).ceil
# end
# p solution(10, 85, 30)
# 16 21
# def solution(a)
#     (1..(a.length + 1)).sum - a.sum
# end
# a = [1, 2, 3, 4, 6]
# p solution(a)

# def solution(a)
#   a.sort == Array(1..a.length) ? 1 : 0
# end
# a = [1, 2, 4]
# b = [1, 2, 3, 4]
# p solution(a)
# p solution(b)

# def solution(a)
#   east = 0
#   west = 0
#   a.each do |n|
#     if n == 0
#       east += 1
#     elsif n == 1
#       west += 1
#     end
#   end
#   puts east + west
# end
# a = [1, 0, 1, 0, 0]
# solution(a)

# def solution(a)
#   p a.uniq.size
# end

# a = [2, 1, 1, 2, 3, 1]
# b = [1, 2, 3]
# solution(a)
# solution(b)

# def solution(a)
#   p a.sort.last(3).inject(:*)
# end
# a = [-3, 1, 2, -2, 5, 6]
# b = [-7, -5, 3, -2, 5, 6]
# solution(a)
# solution(b)

# def solution(a)
#   a.sort!
#   max_three = a[-3..-1].inject(:*)
#   min_two_max = a[0] * a[1] * a[-1]
#   p [max_three, min_two_max].max
# end
# a = [-3, 1, 2, -2, 5, 6]
# b = [-7, -5, 3, -2, 5, 6]
# solution(a)
# solution(b)

# def solution(a)
#   a.select { |v| v > 0 }.sort.each_cons(3).each do |p, q, r|
#     if p + q > r then
#       return 1
#     end
#   end
#   return 0
# end
# ab = [10, 2, 5, 1, 8, 20]
# ba = [10, 50, 5, 1]
# puts solution(ab)
# puts solution(ba)

# input = gets.to_i

# def point(input)
# if input >= 1000
#   (input * 1.1).floor - input
# else
#   0
# end
# end

# puts point(input)

# n = gets.to_i
# a = gets.split(" ").map(&:to_i)
# puts a

# n = gets.to_i
# a = Array.new(n)
# n.times { |i| a[i] = gets.split(" ") }
# a.each do |m|
#   name = m[0]
#   age  = m[1].to_i
#   puts name + " " + (age + 1).to_s
# end

# n = gets.to_i
# n.times { puts gets.chomp.length}

# s = gets
# ss = gets
# if ss.include?(s)
#     puts "YES"
# else
#     puts "NO"
# end

# n = gets
# a = n[0].to_i + n[3].to_i
# b = n[1].to_i + n[2].to_i
# puts a.to_s + b.to_s