class User
end

puts User.class
puts User.superclass
puts Class.superclass
puts Object.class
puts Module.superclass


module Greetable
  def hello
    "hello"
  end
end

module Aisatsu
  include Greetable
  def konnichiwa
    "こんにちは"
  end
end

class User
  include Aisatsu
end

user = User.new
puts user.hello
p User.ancestors

# オープンクラスとモンチーパッチによる変更の有効範囲を限定できるrefinements
module StringShuffle
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end

class User
  # refinementsを有効にする
  using StringShuffle
  
  def initialize(name)
    @name = name
  end
  
  def shuffled_name
    # Userクラスの内部であればStringクラスのshuffleメソッドが有効になる
    @name.shuffle
  end
# Userクラスを抜けるとrifinementsは無効になる
end  
user = User.new("gon")
puts user.shuffled_name

module FirstModule
  def foo
    puts "foo 1st"
  end
end
class Ko
  extend FirstModule
end
puts Ko.foo