class PagesController < ApplicationController
	
	def home
		@landlord_count = Landlord.all.count
		@property_count = Property.all.count
	end

	def dashboard
		@property_count = Property.all.count
	end


	def loggedout
	end

	def about
	end

	def export
	end
end