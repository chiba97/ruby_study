# Procオブジェクトを実行するさまざまな方法
add_proc = Proc.new { |a, b| a + b }
puts add_proc.call(1, 2)
puts add_proc.yield(1, 3)
puts add_proc.(3, 4)
puts add_proc[1, 2]
puts add_proc === [10, 20]

