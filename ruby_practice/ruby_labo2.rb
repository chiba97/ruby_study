# 約数1
# def divisor(num, range)
#   range_div = (1..range).select { |count| num % count == 0 }
#   puts range_div.sum
# end
# num = gets.to_i
# range = gets.to_i
# divisor(num, range)


# トリボナッチ数列2
# a, b, c = 1, 0, 5
# (32-1).times {a, b, c = b, c, a + b + c}
# puts a


# 逆数和を求める3
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


# 掛け算耐性5
# us = {}
# (1..1000000).each do |i|
#   n = 0
#   while i.to_s.length > 1 do
#     i = i.to_s.split('').map(&:to_i).inject(:*)
#     n += 1
#   end
#   us[n] = (us[n] || 0) + 1
# end
# puts us[5]


# ピタゴラスの定理4
# 121
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