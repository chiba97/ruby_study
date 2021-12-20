hello_proc = Proc.new do 
  "hello"
end
# または
# hello_proc = Proc.new { "hello" }
puts hello_proc.call

add_proc = Proc.new { |a, b| a + b }
puts add_proc.call(10, 20)

add_proc = Proc.new { |a = 0, b = 0| a + b }
puts add_proc.call
puts add_proc.call(10)
puts add_proc.call(10, 20)

# Proc.newの代わりにprocメソッドを使用することも可能
add_proc = proc { |a, b| a + b }

def greet(&block)
  puts "おはよう"
  text = block.call("Yhoyho!")
  puts text
  puts "こんばんは"
end
reqeat_proc = Proc.new {|text| text * 2}
puts greet(&reqeat_proc)

def greet(proc_1, proc_2, proc_3)
  puts proc_1.call("おはよう")
  puts proc_2.call("こんにちは")
  puts proc_3.call("こんばんは")
end
shuffle_proc = Proc.new {|text| text.chars.shuffle.join}
repeat_proc = Proc.new { |text| text * 2}
question_proc = Proc.new { |text| "#{text}?"}

greet(shuffle_proc, repeat_proc, question_proc)

# ラムダとしてインスタンスを作成
# Proc.newとの違いはラムダの場合、引数に過不足があるとエラーになる
add_lambda = ->(a, b) {a + b}
puts add_lambda.call(1, 2)