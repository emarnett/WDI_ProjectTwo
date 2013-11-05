class SiteController < ApplicationController
	before_action :is_authenticated?, only: [:index]

	def index 
		@users = User.all.entries
		@current_user= current_user
	end

	def privacy
	end

	def terms
	end

	def bands
	end
end