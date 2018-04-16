require 'soda/client'

class Connection
  client = SODA::Client.new({:domain => "data.cityofchicago.org", :app_token => ENV["APP_TOKEN"]})

  results = client.get("ys7w-i4tk", :$limit => 5000)

  puts "Got #{results.count} results. Dumping first results:"
  results.first.each do |k, v|
    puts "#{key}: #{value}"
  end

end
