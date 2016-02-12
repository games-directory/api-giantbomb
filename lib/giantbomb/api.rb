module GiantBomb
  module Api
    # include HTTParty
    require 'net/http'

    # base_uri 'http://www.giantbomb.com/api/'
    uri = URI('http://www.giantbomb.com/api/')

    def self.config
      # @@config
      GiantBomb::Api.key('api_key')

    end

    def self.key(api_key)
      @@config = {
        api_key: api_key,
        format: 'json'
      }
    end

    def self.get(uri)
      Net::HTTP.get(uri)
    end
  end
end
