require 'soda/client'

class Zone < ActiveRecord::Base

  #get data based on street direct, name and type
  def self.getData(odd_even, street_direction, street_name, street_type)
    resp = Faraday.get 'https://data.cityofchicago.org/resource/ys7w-i4tk.json' do |req|
      req.params['odd_even'] = odd_even
      req.params['street_direction'] = street_direction
      req.params['street_name'] = street_name
      req.params['street_type'] = street_type
      req.params['status'] = "ACTIVE"
    end
    body_hash = JSON.parse(resp.body)
    binding.pry
    @address_high = body_hash["response"]["address_range_high"]
  end

  # def self.getData(even_odd, street_direction, street_name, street_type)
  #     client = SODA::Client.new({:domain => "data.cityofchicago.org", :app_token => ENV["APP_TOKEN"]})
  #     resp = client.get("ys7w-i4tk", :status => "ACTIVE", :odd_even => even_odd, :street_direction => street_direction, :street_name => street_name, :street_type => street_type)
  #
  #     # @num1 = JSON.parse(resp)[address_range_low]
  #     # @num1 = JSON.parse(@hash)['address_range_low']
  #     # @num2 = JSON.parse(@hash)['address_range_high']
  #     binding.pry
  #   end



  #get input from form and check if it is a permit range
  # def getNumber(address_number)
  #   address_hash = JSON.parse(@hash)
  #   @num1 = body_hash["response"]["address_range_low"]
  #   @num2 = body_hash["response"]["address_range_high"]
  # end


end
