# グローバル変数の宣言と値の代入
$program_name = "awesome program"

# グローバルクラスに依存するクラス
class Program
  def initialize(name)
    $program_name = name
  end

  def self.name
    $program_name
  end

  def name
    $program_name
  end
end

puts $program_name
puts Program.name
program = Program.new('Super program')
puts program.name
puts Program.name
puts $program_name