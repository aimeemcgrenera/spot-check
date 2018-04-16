require 'soda/client'

class Connection
  client = SODA::Client.new({:domain => "data.cityofchicago.org", :app_token => ENV["APP_TOKEN"]})

  def self.api
    results = client.get("ys7w-i4tk")
  end

  # puts "Got #{results.count} results. Dumping first results:"
  # results.first.each do |k, v|
  #   puts "#{key}: #{value}"
  # end

end
