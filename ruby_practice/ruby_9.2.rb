# 例外を補足して処理を続行する
puts "Start"

begin
  puts 1 + "2"
rescue
  puts "例外が発生したが、このまま続行する"
end

puts "End"

def method1
  puts "start1"
  begin
    method2
  rescue
    puts "例外発生"
  end
  puts "end1"
end
def method2
  puts "start2"
  method3
  puts "end2"
end
def method3
  puts "start3"
  1 / 0
  puts "end3"
end
puts method1