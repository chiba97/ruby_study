# 定数についてもっと詳しく
# 定数をクラス外部から参照
class Product
  DEFAULT_PRICE = 0
end
puts Product::DEFAULT_PRICE

# 定数を外部から参照させない
class Product
  DEFAULT_PRICE = 0
  private_constant :DEFAULT_PRICE