# モジュールの定義
# モジュールからインスタンスを作成することはできない
# 他のモジュールやクラスを継承することはできない
module Greetable
  def hello
    "hello"
  end
end

# ログを出力するメソッドを提供するモジュール
# ログが出力できる(log + able)という意味でLoggable
module Loggable
  # logメソッドをprivateメソッドにする
  private
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  # 上で作ったモジュールをincluedする
  include Loggable

  def title
    # logメソッドはモジュールで定義したメソッド
    log "title is called."
    "A great movie"
  end
end

class User
  include Loggable

  def name
    log "name is called."
    "Alice"
  end
end

product = Product.new
puts product.title
user = User.new
puts user.name

# モジュールのextend
module Loggable1
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product1
  # Loggableモジュールのメソッドを特異メソッド（クラスメソッド）として追加する
  # extend Loggable1

  def self.create_products(names)
    # logメソッドをクラスメソッド内で呼び出す
    # つまりlogメソッド自体もクラスメソッドになっている
    log "create_products is called111."
  end
end
# クラスの外部からモジュールを呼び出すことも可能
Product1.extend Loggable1
Product1.include Loggable1
puts Product1.create_products([])
puts Product1.log("hello")
