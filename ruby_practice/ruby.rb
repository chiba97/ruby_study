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
