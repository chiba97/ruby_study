# モジュールに定数を定義
module Loggable
  PREFIX = "[LOG]"

  def log(text)
    puts "#{PREFIX} #{text}"
  end
end
# 定数を参照
puts Loggable::PREFIX

# モジュールの特異メソッドとしてsqut（平方根）メソッドを利用する
puts Math.sqrt(2)

class Calculator
  include Math
  def calc_sqrt(n)
    # ミックスインとしてMathモジュールのsqrtメソッドを使う
    sqrt(n)
  end
end
calc = Calculator.new
puts calc.calc_sqrt(3)

# Kernelモジュールを特異メソッドとして呼び出す
Kernel.puts "hello"


