require 'date'
# rescue修飾子
def to_date(string)
  Date.parse(string) rescue nil
end

p to_date('2021-12-18')
p to_date('abck')
p to_date(4)

# $!には最後に発生した例外が格納される
# ＄＠にはバックトレース情報が格納される
begin
  1/0
rescue
  puts "#{$!.class} #{$!.message}"
  puts $@
end

# # メソッドの中身が全体beginとendで囲まれていた場合は省略可能（doとendも同様）
# def fizz_buzz(n)
#   if n % 15 == 0
#     "Fizz Buzz"
#   elsif n % 3 == 0
#     "Fizz"
#   elsif n % 5 == 0
#     "Buzz"
#   else
#     n.to_s
#   end
# rescue => e
#   puts "#{e.class} #{e.message}"
# end

# user.each do |u|
#     send_mail_to(user)
#   rescue => e
#     puts e.full_message
# end

# rescueした例外を再度発生させる
# プログラム自体は異常終了させるものの、情報はログに残したりメールで送信したい時
def fizz_buzz(n)
  if n % 15 == 0
    "Fizz Buzz"
  elsif n % 3 == 0
    "Fizz"
  elsif n % 5 == 0
    "Buzz"
  else
    n.to_s
  end
rescue => e
  puts "[LOG]エラーが発生しました： #{e.class} #{e.message}"
  raise
end
# puts fizz_buzz(nil)

独自の例外クラスを定義する
class NoCountryError < StandardError
  attr_reader :country
  
  def initialize(message, country)
    @country = country
    # スーパークラスには元々引数としてメッセージを付けるので、独自の記述に修正する
    super("#{message} #{country}" )
    end
  end

  def currency_of(country)
    case country
    when :japan
      "yen"
    when :us
      "dollar"
    when :inidia
      "rupee"
    else
      raise NoCountryError.new("無効な国名です", country)
    end
  end

  begin
    puts currency_of(:italy)
  rescue NoCountryError => e
    puts e.message
    puts e.country
  end
