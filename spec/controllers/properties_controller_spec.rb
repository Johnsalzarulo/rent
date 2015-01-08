require 'spec_helper'


describe 'PropertiesController' do 
	let(:landlord) {Landlord.create}

	before do 
		sign_in_as landlord
	end

	describe 'GET index' do
		it 'returns success' do 
			get :index 
			response.should be_success 
		end
	end
end
