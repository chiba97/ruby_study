# 例外を補足して処理を続行する
puts "Start"

begin
  puts 1 + "2"
rescue
  puts "例外が発生したが、このまま続行する"
end

puts "End"

def method1
  puts "start1"
  begin
    method2
  rescue
    puts "例外発生"
  end
  puts "end1"
end
def method2
  puts "start2"
  method3
  puts "end2"
end
def method3
  puts "start3"
  # 1 / 0
  puts "end3"
end
puts method1

# 例外オブジェクトから情報を取得する
begin
  1/0
rescue => e
  puts "エラークラス：#{e.class}"
  puts "エラーメッセージ：#{e.message}"
  puts "バックトレースーーーーー"
  puts e.backtrace
  puts "ーーーーー"
end

# クラスを指定して補足する例外を限定する
begin
  abc.foo
rescue ZeroDivisionError, NameError => e
  puts "0で徐算しました"
  # puts "エラー：#{e.class} #{e.message}"
end

# 例外の発生時にもう一度処理をやり直すretry
retry_count = 0
begin
  puts "処理を開始します"
  1 / 0
rescue
  retry_count += 1
  if retry_count <= 3
    puts "retryします （#{retry_count}回目）"
    retry
  else
    puts "retryに失敗しました。"
  end
end

# 意図的に例外を発生させる:raiseメソッド
def currency_of(country)
  case country
  when :japan
    "yen"
  when :us
    "dollar"
  when :india
    "rupee"
  else
    # 第一引数に例外クラス、第二引数にエラーメッセージを渡すと、
    # RuntimeErrorクラス以外の例外を発生させることができる
    raise NoMethodError, "無効な国名です。#{country}"
  end
end
puts currency_of(:italy)