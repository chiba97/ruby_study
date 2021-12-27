# 約数
# def divisor(num, range)
#   divisible = []
#   divisible_range = []
#   count = 1
#   while count <= num
#     divisible_or = num % count
#     if divisible_or == 0
#       divisible << count
#       if count <= range
#         divisible_range << count
#       end
#     end
#     count += 1
#   end
#   puts "約数の総和は#{divisible.sum}です"
#   puts "#{range}以下の約数の和は#{divisible_range.sum}です"
# end

# puts "約数の総和を出したい整数を入力してください"
# num = gets.to_i
# puts "和を出したい約数の範囲を指定してください"
# range = gets.to_i
# divisor(num, range)



# トリボナッチ数列の学習
# a, b, c = 1, 0, 5
# (32-1).times {a, b, c = b, c, a + b + c}
# p a

# 逆数和を求める
# num = []
# sum = 0
# count = 0
# while sum < 12
#   count += 1
#   reciprocal = 1.0/count
#   num << reciprocal
#   sum = num.sum
# end
# puts num.length

# 121
# ピタゴラスの定理

# list_abc=[]
# for b in range(1,12001)
#     for a in range(1,b+1)
#         if a*b > 12000: break
#         c = math.sqrt(a**2+b**2)
#         if c == int(c) list_abc.append((a,b,int(c)))

# print("The number of combinations = %d" % len(list_abc))

# a = 1
# list = []
# while a ** 2/2 < 6000:
# 　　b = a + 1
# 　　while a*b/2 <= 6000:
# 　　　　cs = a**2 + b**2
# 　　　　c = math.floor(math.sqrt(cs) + 0.001)
# 　　　　if c**2 == cs:
# 　　　　　　list.append((a, b, c))
# 　　　　　　print(a, b, c)
# 　　　　b += 1
# 　　a += 1


# print(list)
# print(len(list))

# 掛け算耐性
# t = 0
# u = 0
# [123].each do |i|
# (1..1000000).each do |i|
#   s = 0
#   t = 1
#   x = i.to_s
#   y = i.to_s.length
#   result = x.split("") # 下の処理と等価
#   while s < y
#     result << x[s]
#     s += 1
#   end
#   3.times do
#     t *= result[u].to_i
#     # 各桁掛け算処理
#     '123' => ['1', '2', '3'] => [1, 2, 3] => 1 * 2 * 3
#     i = i.to_s.split('').map(&:to_i).inject(:*)
#   end
#   if t.to_s.length == 1
#   if i.to_s.length == 1
#     u += 1
#   end
# end

# p u

# u = 0

# us = {}

# (1..1000000).each do |i|
#   n = 0
#   while i.to_s.length > 1 do
#     i = i.to_s.split('').map(&:to_i).inject(:*)
#     n += 1
#   end
#   us[n] = (us[n] || 0) + 1
# end

# p us
# # {0=>9, 1=>248, 2=>340, 3=>310, 4=>84, 5=>9}
# p us[5] # 3回目で一桁
# # 310
