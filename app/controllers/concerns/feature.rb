module Feature
  include ActiveSupport::Concern
	require 'httparty'
	API_URL_EARTHQUAKE = "http://localhost:3000/features"
	def self.get_list_features(mag_type)
		earthquake_url = API_URL_EARTHQUAKE
		response = HTTParty.get(
			earthquake_url,
			query: {mag_type: mag_type},
		).body
			return JSON.parse(response, symbolize_names: true)
	end
end