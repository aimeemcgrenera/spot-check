require 'soda/client'

class Zone < ActiveRecord::Base

  #get data based on street name
  def self.getData(street_name, street_direction)
    client = SODA::Client.new({:domain => "data.cityofchicago.org", :app_token => ENV["APP_TOKEN"]})
    results = client.get("ys7w-i4tk", :street_name => street_name, :street_direction => street_direction)
  end

  #get input from form and check if it is a permit range
  def parse_addresses
    results
  end


end
