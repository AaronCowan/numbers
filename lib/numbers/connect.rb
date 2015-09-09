module Numbers
  module Connection
    class << self
      attr_reader :connection
    end
    @connection = Faraday.new(:url => "http://numbersapi.com") do |faraday|
      faraday.adapter(Faraday.default_adapter)
    end
  end
end
