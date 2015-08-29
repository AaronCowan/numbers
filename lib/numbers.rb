require 'faraday'
require 'numbers/connect'
require 'json'

module Numbers

  extend Connection

  class << self

    attr_accessor :api_key

    def get_date_fact(day, month)
      if day.is_a?(Integer) && month.is_a?(Integer)
        response = Connection.connection.get do |req|
          req.url "/#{day}/#{month}/date?json=true"
          req.headers['X-Mashape-Key'] = @api_key 
          req.headers['Accept']        = "text/plain"
        end
        JSON.parse(response.body)
      else
        puts "day and month must be integers"
      end
    end

    def get_math_fact(int)
      if int.is_a?(Integer)  
        response = Connection.connection.get do |req|
          req.url "/#{int}/math?json=true"
          req.headers['X-Mashape-Key'] = @api_key 
          req.headers['Accept']        = "text/plain"
        end
        JSON.parse(response.body)
      else
        puts "must submit an integer"
      end
    end

    def get_random_fact
      types = %w{trivia math date year}
      response = Connection.connection.get do |req|
        req.url "/random/#{types.sample}?json=true"
        req.headers['X-Mashape-Key'] = @api_key 
        req.headers['Accept']        = "text/plain"
      end
      JSON.parse(response.body)
    end

    def get_trivia_fact(int)
      if int.is_a?(Integer)
        response = Connection.connection.get do |req|
          req.url "/#{int}/trivia?json=true"
          req.headers['X-Mashape-Key'] = @api_key 
          req.headers['Accept']        = "text/plain"
        end
        JSON.parse(response.body)
      else
        puts "must submit an integer"
      end
    end

    def get_year_fact(int)
      if int.is_a?(Integer)
        response = Connection.connection.get do |req|
          req.url "/#{int}/year?json=true"
          req.headers['X-Mashape-Key'] = @api_key 
          req.headers['Accept']        = "text/plain"
        end
        JSON.parse(response.body)
      else
        puts "must submit an integer"
      end
    end
  end
end

#Numbers.api_key = ""
#puts Numbers.get_date_fact(21,6)
#puts Numbers.get_math_fact(100)
#puts Numbers.get_random_fact
#puts Numbers.get_trivia_fact(20)
#puts Numbers.get_year_fact(-1)

