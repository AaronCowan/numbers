module Numbers
  module Connection
    class << self
      attr_reader :connection
    end
    @connection = Faraday.new(:url => "https://numbersapi.p.mashape.com") do |faraday|
      faraday.response :logger
      faraday.adapter Faraday.default_adapter
    end
  end
end
