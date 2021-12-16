# クラスの継承
class Product
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end
product = Product.new('A great movie', 1000)
puts product.name
puts product.price

class DVD < Product
  attr_reader :running_time
  def initialize(name, price, running_time)
    @name = name
    @price = price
    @running_time = running_time
  end
end
dvd = DVD.new('A great movie', 1000, 120)
puts dvd.name
puts dvd.price
puts dvd.running_time

# スーパークラスの同名メソッドを呼び出す
class DVD < Product
  attr_reader :running_time
  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end
end
dvd = DVD.new('A great movie', 1000, 120)
puts dvd.name
puts dvd.price
puts dvd.running_time

# 引数がスーパークラスとサブクラスで同じ場合
class DVD < Product
  attr_reader :jiji
  def initialize(name, price, jiji)
    super(name, price)
    @jiji = jiji
  end
end
dvd = DVD.new('A great movie',222, 'jijiji')
puts dvd.name
puts dvd.jiji
puts dvd.price
# puts dvd.price

# メソッドのオーバーライド
class Product
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
  # オブジェクトクラスのto_sメソッドをオーバーライド
  def to_s
    "name: #{name}, price: #{price}"
  end
end

class DVD < Product
  attr_reader :running_time
  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end
  # プロダクトクラスのto_sメソッドをさらにオーバーライドする
  def to_s
    # superでスーパークラスのto_sメソッドを呼び出す
    "#{super}, running_time: #{running_time}"
  end
end

product = Product.new('A great movie', 1000)
puts product.to_s
dvd = DVD.new('An awesome film', 3000, 120)
puts dvd.to_s

# クラスメソッドの継承
class Foo
  def self.hello
    'hello'
  end
end

class Bar < Foo
end

puts Foo.hello
puts Bar.hello