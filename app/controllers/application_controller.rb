class ApplicationController < ActionController::Base
  before_action :set_time_zone

  private

    def set_time_zone
      min = cookies[:timezone].to_i
      Time.zone =  ActiveSupport::TimeZone[-min.minutes]
    end
end
