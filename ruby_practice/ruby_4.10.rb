# 様々な繰り返し処理
sum = 0
# nには0 1 2 3 4が入る
# 不要であればブロックパラメーターを除くことも可能
5.times { |n| sum += n }
puts sum

sum = 0
5.times { sum += 1 }
puts sum

# upto downto
a = []
10.upto(14) { |n| a << n }
p a
a = []
10.downto(5) { |n| a << n }
p a

# step(開始値.step(上限, 一度に増減する大きさ))
a = []
1.step(10, 2) { |n| a << n }
p a
a = []
10.step(1, -2) { |n| a << n }
p a

# while文 until文
a = []
while a.size < 5
  a << 1
end
p a

a = []
while a.size < 5 do a << 1 end
p a

a = []
a << 1 while a.size < 5
p a

# どんな条件でも一度は実行したい時はbegin endで囲んだ後にwhile文を書く
a = []
begin
  a << 1
end while false
p a

# whileの反対until
a = [10, 20, 30, 40, 50]
until a.size <= 3
a.delete_at(-1)
end
p a

numbers = [1, 2, 3, 4, 5]
sum = 0
for n in numbers
  sum += n
end
p sum

sum = 0
for n in numbers do sum += n end
p sum

sum = 0
numbers.each do |n|
  sum += n
end
p sum

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
puts sum

# loopメソッド
numbers = [1, 2, 3, 4, 5]
loop do
  # sampleメソッドを用いてランダムに取り出す
  n = numbers.sample
  puts n
  break if n == 5
end

while true
  n = numbers.sample
  puts n
  break if n == 5
end

# 再帰呼び出し
def factorial(n)
  n > 0 ? n * factorial(n - 1) : 1
end
puts factorial(5)
puts factorial(1)

def factorial(n)
  ret = 1
  (1..n).each { |n| ret *= n }
  ret
end
puts factorial(5)