class PagesController < ApplicationController
	
	def home
		@landlord_count = Landlord.all.count
		@property_count = Property.all.count
	end

	def dashboard
		@landlord_count = Landlord.all.count
		@property_count = Property.all.count
	end


	def loggedout

	end
end