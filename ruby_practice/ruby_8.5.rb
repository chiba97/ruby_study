# # 引数で渡したモジュールがincludeされているか確認
# Product.include?(Loggable)

# # includeされているモジュールが配列で返る
# Product.included_modules

# # ancestorsメソッドを使うとモジュールとスーパークラスの情報も入ってくる
# Product.ancestors

# # インスタンスに対してクラスを通してオブジェクトを確認
# product = Product.new
# product.class.include?(Loggable)
# product.class.include_modules

# # 直接インスタンスに対してモジュールを確認
# product.is_a?(Product)
# product.is_a?(Loggable)
# product.is_a?(Object)

class User
end

puts User.class
puts Class.superclass
puts Object.class

module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

# クラス以外のオブジェクトにextendすると特異メソッドになる
s = "abc"
# puts s.log("hello")
s.extend Loggable
puts s.log("text")

