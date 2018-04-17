require 'soda/client'

class Zone < ApplicationRecord

  def self.getData
    client = SODA::Client.new({:domain => "data.cityofchicago.org", :app_token => ENV["APP_TOKEN"]})
    results = client.get("ys7w-i4tk")
  end

  def self.retrieve_results(streetName)
    @url = "https://data.cityofchicago.org/resource/ys7w-i4tk.json?street_name=#{streetName}"
    binding.pry
    Zone.getData
  end

end
