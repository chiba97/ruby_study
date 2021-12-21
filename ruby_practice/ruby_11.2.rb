# パターンマッチの学習、ruby3.0から正式に導入された機能
# case/whenではなくcase/inに注目
require 'date'
records = [
  [2021],
  [2019, 5],
  [2017, 11, 25]
  ]
records.map do |record|
  case record
  in [y]
    puts Date.new(y, 1, 1)
  in [y, m]
    puts Date.new(y, m, 1)
  in [y, m, d]
    puts Date.new(y, m, d)
  end
end

# ハッシュをパターンマッチさせる
cars = [
  {name: 'The Beatle', engine: '105ps'},
  {name: 'Prius', engine: '98ps', motor: '72ps'},
  {name: 'Tesla', motor: '306ps'}
  ]
  cars.each do |car|
    case car
    in {name:, engin:, motor:}
      puts "Hybrid: #{name} / engine: #{engin} / motor: #{motor}"
    in {name:, engine:}
      puts "Gasoine: #{name} / engine: #{engine}"
    in {name:, motor:}
      puts "EV: #{name} / motor: #{motor}"
    end
  end