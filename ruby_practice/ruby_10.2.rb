def greet 
  puts "hello"
  yield
end

greet do 
  puts "こんにちは"
end

def greet
  puts "おはよう"
  if block_given?
    yield
  end
  puts "おはよ"
end

def greet
  puts "おはよう"
  text = yield "こんにちは"
  puts text
end

greet do |text|
  puts text * 2
end

def greet(&block)
  puts "おはよう"
  if block_given?
    text = block.call("こんにちは")
    puts text
  end
  puts "こんばんは"
end
greet
# greet do |text|
#   text * 2
# end

def greet_ja(&block)
  texts = ["おはよう", "こんにちは", "こんばんは"]
  greet_common(texts, &block)
end

def greet_en(&block)
  texts = ["good morning", "hello", "good evening"]
  greet_common(texts, &block)
end

def greet_common(texts, &block)
  puts texts[0]
  puts block.call(texts[1])
  puts texts[2]
end

greet_ja do |text|
  text * 2
end