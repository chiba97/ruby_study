require 'date'
# 例外処理の対象範囲と対象クラスを極力絞り込む
def convert_reiwa_to_date(reiwa_text)
  m = reiwa_text.match(/令和(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
  year = m[:jp_year].to_i + 2018
  month = m[:month].to_i
  day = m[:day].to_i
  begin
    Date.new(year, month, day)
  rescue ArgumentError
    puts nil
  end
end

puts convert_reiwa_to_date("令和3年2月3日")
# puts convert_reiwa_to_date("令")

# rescueよりも条件分岐を使った方が、可読性やパフォーマンスが上がる
def convert_reiwa_to_date(reiwa_text)
  m = reiwa_text.match(/令和(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
  year = m[:jp_year].to_i + 2018
  month = m[:month].to_i
  day = m[:day].to_i
  if Date.valid_date?(year, month, day)
    Date.new(year, month, day)
  end
end
puts convert_reiwa_to_date("令和3年2月3日")
# puts convert_reiwa_to_date("令")

# 予期しない条件は以上終了させる
def currency_of(country)
  case country
  when :japan
    "yen"
  when :us
    "dollar"
  else
    raise ArgumentError, "無効な国名です。#{country}"
  end
end
puts currency_of(:italy)