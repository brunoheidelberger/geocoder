require 'geocoder/results/base'

module Geocoder::Result
  class Test < Base

    def coordinates
      [47.4082258, 8.5540051]
    end

    def address(format = :full)
      'Tramstrasse 71, 8050 Zurich'
    end

    def postal_code
      '8050'
    end

    def city
      'Zurich'
    end

    def state
      'Zurich'
    end

    def state_code
      'ZH'
    end

    def country
      'Switzerland'
    end

    def country_code
      'CH'
    end
  end
end
