# frozen_string_literal: true

module QuelinkMg
  module Resp
    class Gtstt < Base
      GTSTT_RESP_KEYS = %w[protocol_version unique_id device_name state gps_accuracy
                          speed azimuth altitude last_longitude last_latitude gps_utc_time
                          mcc mnc lac cell_id odo_mileage send_time count_number].freeze
  
      def hash
        unify_keys(GTSTT_RESP_KEYS.zip(@response.split(',')).to_h)
      end
    end
  end
end
