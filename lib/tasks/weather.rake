namespace :weather do
  desc "GET currrent local weather"
  task get_current: :environment do
		require 'net/http'
		require 'json'

		api_path = "#{ENV['API_URI'] }?q=#{ENV['LOCAL_CITY']}&appid=#{ENV['API_KEY']}"
		uri = URI(api_path)
		response = Net::HTTP.get(uri)
		response = JSON.parse(response)
  end
end
