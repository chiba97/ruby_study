require 'net/http'
require 'uri'
require 'json'

module LogFormatter
  def self.format_log
    uri = URI.parse('https://samples.jnito.com/access-log.json')
    json = Net::HTTP.get(uri)
    log_date = JSON.parse(json, symbolize_names: true)
    
    log_date.map do |log|
      case log
      in {request_id:, path:, status: 404 | 500 => status, error:}
        "[ERROR] request_id=#{request_id}, path=#{path}, status=#{status}, error=#{error}"
      in {request_id:, path:, duration: 1000.. => duration}
        "[WARN] request_id=#{request_id}, path=#{path}, duration=#{duration}"
      in {request_id:, path:}
        "[OK] request_id=#{request_id}, path=#{path}"
      end
    end.join("\n")
  end
  
  # パターンマッチ以外のコード例
  # log_data.map do |log|
  #   request_id, path, status, duration, error =
  #   log.values_at(:request_id, :path, :status, :duration, :error)
  #   if status == 404 || status == 500
  #     "[ERROR] request_id=#{request_id}, path=#{path}, status=#{status}, error=#{error}"
  #   elsif duration >= 1000
  #     "[WARN] request_id=#{request_id}, path=#{path}, duration=#{duration}"
  #   else
  #     "[OK] request_id=#{request_id}, path=#{path}"
  #   end
  # end
end