# publicメソッド
# initializeメソッド以外のインスタンスメソッドはデフォルトでpublicメソッド
class User
  def hello
    "hello"
  end
end
user = User.new
# publicメソッドなので外部から呼び出せる
puts user.hello

# privateメソッド
# クラスの外部からは呼び出せない、クラスの内部でのみ使える（レシーバがselfに限られる）
class User1
  # ここから下で定義されたメソッドはprivate
  private

  def hello
    "hello"
  end
end
user = User1.new
# privateメソッドなので外部からは呼び出せない
# puts user.hello

# 2.7からはselfをつけて(つけなくてもOK)内部で呼び出せる
class User2
  def hello
    "hello, i am #{self.name}"
  end

  private

  def name
    "hiroshi"
  end
end
user = User2.new
# privateメソッドなので外部からは呼び出せない
puts user.hello

# privateメソッドはサブクラスでも呼び出せる
class Product
  def price
    "2344"
  end
  private
  def name
    'test test'
  end
end

class DVD < Product
  def to_s
    "name: #{self.name}, price: #{price}"
  end
end

dvd = DVD.new
puts dvd.to_s


class Product
  def to_s
    "name: #{name}"
  end
  
  private
  def name
    "a great movie"
  end
end

class DVD < Product
  private
  def name
    "a bad movie"
  end
end

product = Product.new
puts product.to_s
dvd = DVD.new
puts dvd.to_s

# オーバーライドで可視性も変更できることに注意
class Product
  private
  def name
    "greate"
  end
end

class DVD < Product
  public
  def name
    "bad"
  end
end
dvd = DVD.new
puts dvd.name

# クラスメソッドはprivateの下に定義してもpravateにならない
# クラスメソッドをprivateにしたい場合
class User
  class << self
    private
    def hello
      "こんにちは"
    end
  end
end
# puts User.hello

class User
  def self.hello
    "こんにちは"
  end
  private_class_method :hello
end
# puts User.hello

# privateメソッドに引数を渡して可視性を変更
class User
  def foo
    "foo"
  end
  def bar
    "bar"
  end
  
  private :foo, :bar
  # 以下はpublicになる
  def baz
    "baz"
  end
end

class User
  # メソッド定義の戻り値：fooをprivateキーワードの引数とする
  private def foo
  "foo"
  end
end

# ゲッターメソッドとセッターメソッドをそれぞれprivateにする
class User
  attr_accessor :name
  private :name, :name=
  
  def initialize(name)
    @name = name
  end
end

# ruby3.0からのprivateなアクセサメソッドを定義できるようになった
class User
  private attr_accessor :name
  
  def initialize(name)
    @name = name
  end
end

# protectedメソッド
class User3
  attr_reader :name
  
  def initialize(name, weight)
    @name = name
    @weight = weight
  end
  
  def heavier_than?(other_user)
    other_user.weight < @weight
  end
  
  protected 
  def weight
    @weight
  end
end
alice = User3.new('alice', 58)
bob = User3.new('bob', 29)
puts alice.heavier_than?(bob)

# ruby3.0以上ならシンプルに定義できる
class User
  attr_reader :name
  protected attr_reader :weight
end
# ruby2.7以下の場合
class User
  attr_accessor :name, :weight
  protected :weight
  