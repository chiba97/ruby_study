# シンボル
currencies = { :japan => 'yen', :us => 'dollar' }
puts currencies[:japan]

status = :done
case status
when :todo
  puts 'これからやります。'
when :doing
  puts '今やってます'
when :done
  puts 'もう終わりました'
end