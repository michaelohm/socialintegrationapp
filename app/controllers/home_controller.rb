class HomeController < ApplicationController

	def index
		@users = User.all
		@facebook_session_data = session["devise.facebook_data"]
		if @facebook_session_data
			@graph = Koala::Facebook::API.new(@facebook_session_data["credentials"]["token"])
		end
	end
	
end