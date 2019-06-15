module Feature
  include ActiveSupport::Concern
	require 'httparty'
	API_URL_EARTHQUAKE = "http://localhost:3000/features"
	API_FEATURE_COMMENTS = "http://localhost:3000/features"
	def self.get_list_features(mag_type)
		earthquake_url = API_URL_EARTHQUAKE
		response = HTTParty.get(
			earthquake_url,
			query: {mag_type: mag_type},
		).body
			return JSON.parse(response, symbolize_names: true)
	end

	def self.comments(id)
		comments_url = API_FEATURE_COMMENTS + "/#{id}/comments"
		response = HTTParty.get(
			comments_url,
		).body
			return JSON.parse(response, symbolize_names: true)
	end
end