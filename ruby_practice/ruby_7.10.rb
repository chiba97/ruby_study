# エイリアスメソッドを定義
class User
  def hello
    "hello"
  end

  # helloメソッドのエイリアスメソッドとしてgreetを定義する
  alias greet hello
end
user = User.new
puts user.greet

# メソッドの定義
# オブジェクトクラスのfreezeメソッドを削除する
class User1
  undef freeze
end
user = User.new
user.freeze
# 入れ子になったクラスの定義
class User2
  class BloodType
    attr_reader :type

    def initialize(type)
      @type = type
    end
  end
end

blood_type = User2::BloodType.new('B')
puts blood_type.type

# 演算子の挙動を独自に再定義( == )
class Product
  attr_reader :code, :name
  
  def initialize(code, name)
    @code = code
    @name = name
  end
  
  def ==(other)
    other.is_a?(Product) && code == other.code
  end
end
a = Product.new('a-001', 'greate')
b = Product.new('a-002', 'greate')
c = Product.new('a-001', 'greate')

puts a == b
puts a == c

a = 'abc'
b = 'avd'
a.equal?(b)
c = a 
c.equal?(a)

# 特異メソッド
alice = 'i am alice'
bob = 'i am bob'
def alice.shuffle
  chars.shuffle.join
end
puts alice.shuffle
puts bob

alice = 'i am alice'
class << alice
  def shuffle
    chars.shuffle.join
  end
end
puts alice.shuffle

# クラスメソッドは特異メソッドの一種
class User
end

def User.hello
  'hello'
end

class << User
  def hi
    'hi'
  end
end

puts User.hello
puts User.hi

# メソッドの有無を調べる
s = 'Alice'
s.respond_to?(:split)
s.respond_to?(:name)

def display_name(object)
  if object.respond_to?(:name)
    puts "name is #{object.name}."
  else
    puts "no name."
  end
