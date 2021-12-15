class User
  def initialize(name, age)
    puts "name: #{name}, age: #{age}"
  end
end
puts User.new('Alice', 20)

# クラスのインスタンスに対して呼び出せるインスタンスメソッド
class User2
  def hello
    "Hello!"
  end
end
user = User2.new
puts user.hello

# 同じインスタンスの内部で共有される変数、インスタンス変数
class User3
  def initialize(name)
    @name = name
  end

  def hello
    "Hello, I am #{@name}."
  end
end
user = User3.new('Alice')
puts user.hello

# ローカル変数は繰り返し呼ばれると都度新しいローカル変数が作られる
class User4
  def initialize(name)
    @name = name
  end

  def hello
    shuffled_name = @name.chars.shuffle.join
    "Hello, I am #{shuffled_name}."
  end
end
user = User4.new('Alice')
puts user.hello

# インスタンス変数を外部から変更するためのメソッド
class User5
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
  # 外部から変更をするメソッド
  def name=(value)
    @name = value
  end
end
user = User5.new('Alice')
puts user.name
# name=メソッドを呼び出している
user.name = 'Bob'
puts user.name

# アクセサメソッドの定義を省略
class User6
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
user = User6.new('Alice')
puts user.name
user.name = 'bob'
puts user.name

# 読み取り専用
class User7
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
user = User7.new('ゲッター')
puts user.name

# 書き込み専用
class User8
  attr_writer

  def initialize(name)
    @name = name
  end
end
user = User8.new('alice')
# user.name = 'bob'

# カンマで区切り複数のインスタンス変数に対するアクセサメソッドを定義
class User9
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
end
user = User9.new('Alice', 20)
puts user.name
puts user.age
user.name = 'yaki'
puts user.name

# クラスメソッド：インスタンスに含まれるデータは使わないメソッド
class User10
  def initialize(name)
    @name = name
  end
  # クラスメソッド
  def self.create_users(names)
    names.map do |name|
      User10.new(name)
    end
  end
  # インスタンスメソッド
  def hello
    "hello, i am #{@name}."
  end
end
names = ['alice', 'bob', 'carol']
# クラスメソッドの呼び出し
users = User10.create_users(names)
users.each do |user|
  puts user.hello
end

# 定数
class Product
  # デフォルトの価格を定数として定義する
  DEFAULT_PLICE = 0
  attr_accessor :name, :price
  
  def initialize(name, price = DEFAULT_PLICE)
    @name = name
    @price = price
  end
end
product = Product.new('A free movie')
puts product.name
puts product.price

# 定数はクラスメソッドとインスタンスメソッド内でも参照できる
class Product2
  DEFAULT_PLICE = 100
  
  def self.default_price
    DEFAULT_PLICE
  end
  
  def default_price
    DEFAULT_PLICE
  end
end
puts Product2.default_price
product = Product2.new
puts product.default_price