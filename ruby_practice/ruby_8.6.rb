# モジュールを利用した名前空間
# module Baseball
#   class Second
#     def initialize(player, uniform_number)
#       @player = player
#       @uniform_number = uniform_number
#     end
#   end
# end

# module Clock
#   class Second
#     def initialize(digits)
#       @digits = digits
#     end
#   end
# end

# puts Baseball::Second.new('Alice', 13)
# puts Clock::Second.new(13)

# module Baseball
#   class File
#   end
# end

# module Baseball
#   class Second
#     def file_with_nesting
#       puts File
#     end
#   end
# end

# class Baseball::Second
#   def file_without_nesting
#     puts Baseball::File
#   end
# end

# second = Baseball::Second.new
# puts second.file_with_nesting
# puts second.file_without_nesting

# # モジュールに特異メソッドを定義する
# module Loggable
#   def self.log(text)
#     puts "[LOG] #{text}"
#   end
# end

# puts Loggable.log("hello")

# module_functionメソッド（ミックスインかつモジュールの特異メソッドとして使える）
# module Loggable
#   def log(text)
#     puts "[LOG]#{text}"
#   end
#   # logメソッドをミックスインとしても、モジュールの特異メソッドとしても使えるようにする
#   # module_functionは対象メソッドの定義よりも下で呼び出すこと
#   # module_function :log
# end

# # Loggable.log("hello")

# class Product
#   extend Loggable
#   # include Loggable

#   def title
#     # log "title is called."
#     "A great movie"
#   end
# end

# Product.log("hello222")
# product = Product.new
# puts product.log("hello222222")