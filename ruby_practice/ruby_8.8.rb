class AwesomeApi
  @base_url = ""
  @debug_mode = false

  class << self
    attr_accessor :base_url, :debug_mode
  end
end

AwesomeApi.base_url = "ijijijiji"
AwesomeApi.debug_mode = true
puts AwesomeApi.base_url
puts AwesomeApi.debug_mode

# 一つのモジュールを複数の用途で使用する
# AwesomeApiモジュールはせって血を保持する
module AwesomeApi
  @base_url = ''
  @debug_mode = false
  class << self
    attr_accessor :base_url, :debug_mode
  end
end
# こちらでは名前空間として使用
module AwesomeApi
  class Engine
  end
end