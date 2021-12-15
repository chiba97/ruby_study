class Foo
  3.times do
    puts 'ss'
  end
  # クラス定義の際に読み込まれるputs
  puts "クラス構文の直下のself: #{self}"

  def self.bar
    puts "クラスメソッド内のself: #{self}"
  end

  def baz
    puts "インスタンスメソッド内のself: #{self}"
  end
end

Foo.bar
# foo = Foo.new
# p foo.baz

class Product
  attr_accessor :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end

  def self.format_price(price)
    "#{price}円"
  end

  def to_s
    formatted_price = Product.format_price(price)
    "name: #{name}, price: #{formatted_price}"
  end
end
product = Product.new('A great movie', 100)
puts product.to_s