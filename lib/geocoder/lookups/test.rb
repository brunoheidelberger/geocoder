require 'geocoder/lookups/base'
require "geocoder/results/test"

module Geocoder::Lookup
  class Test < Base

    private # ---------------------------------------------------------------

    def results(query, reverse = false)
      case query
      when 'no results'
        return []
      when 'timeout'
        raise TimeoutError if Geocoder::Configuration.always_raise.include?(TimeoutError)
      when 'socket_error'
        raise SocketError
      end

      [Geocoder::Result::Test.new(nil)]
    end

    def query_url(query, reverse = false)
      params = {
        :query => query
      }
      "#{protocol}://localhost/geocode?" + hash_to_query(params)
    end
  end
end

