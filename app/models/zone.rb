require 'soda/client'

class Zone < ApplicationRecord

  def self.getData(street_name)
    client = SODA::Client.new({:domain => "data.cityofchicago.org", :app_token => ENV["APP_TOKEN"]})
    results = client.get("ys7w-i4tk", :street_name => street_name)
  end

end
