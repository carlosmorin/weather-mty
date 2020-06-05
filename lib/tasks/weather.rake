namespace :weather do
  desc "GET currrent local weather"
  task get_current: :environment do
		require 'net/http'
		require 'json'

		api_path = "#{ENV['API_URI'] }?q=#{ENV['LOCAL_CITY']}&appid=#{ENV['API_KEY']}"
		uri = URI(api_path)
		response = Net::HTTP.get(uri)
		response = JSON.parse(response)

		city_code = response["cod"]
		city_name = response["name"]
		status = response['weather'][0]['main']
		description = response['weather'][0]['description']
		temp = response['main']['temp']

		WatherRecord.create(
			city_code: city_code,
			city_name: city_name,
			status: status,
			description: description,
			temp: temp
		)
  end
end
