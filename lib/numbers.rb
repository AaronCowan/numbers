require 'faraday'
require 'numbers/connect'
require 'json'

module Numbers

  extend Connection

  class << self

    def date(day, month)
      if day.is_a?(Integer) && month.is_a?(Integer)
        response = get_response(day, month)
        JSON.parse(response.body)
      else
        puts "day and month must be integers"
      end
    end

    def math(int)
      if int.is_a?(Integer)  
        response = get_response(int)
        JSON.parse(response.body)
      else
        puts "must submit an integer"
      end
    end

    def random 
      types = %w{trivia math date year}
      response = get_response(types.sample)
      JSON.parse(response.body)
    end

    def trivia(int)
      if int.is_a?(Integer)
        response = get_response(int)
        JSON.parse(response.body)
      else
        puts "must submit an integer"
      end
    end

    def year(int)
      if int.is_a?(Integer)
        response = get_response(int)
        JSON.parse(response.body)
      else
        puts "must submit an integer"
      end
    end

    private 
      def get_response(*args)
        type = caller[0][/`.*'/][1..-2]

        if type == "date"
          Connection.connection.get do |req|
            req.url "/#{args[0]}/#{args[1]}/#{type}?json=true" 
          end

        elsif type == "math"
          Connection.connection.get do |req|
            req.url "/#{args[0]}/#{type}?json=true" 
          end

        elsif type == "random"
          Connection.connection.get do |req|
            req.url "/#{type}/#{args[0]}/?json=true" 
          end

        elsif type == "trivia"
          Connection.connection.get do |req|
            req.url "/#{args[0]}/#{type}?json=true" 
          end
        
        elsif type == "year"
          Connection.connection.get do |req|
            req.url "/#{args[0]}/#{type}?json=true" 
          end
        
        else
          puts "what the hell did you do"
        end
      end
  end
end
