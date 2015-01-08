require 'spec_helper'

describe Property do 
	describe 'occupied?' do 
		let (:occupied_property) {Property.create}
		let (:vacant_property) {Property.create}
		let (:vacated_property) {Property.create}
		let!(:tenant) {Tenant.create(property_id: occupied_property.id, status: 'active tenant')}
		let!(:past_tenant) {Tenant.create(property_id: vacated_property.id, status: 'past tenant')}


		context 'when the property has at least one active tenant' do
			it 'returns true' do
				expect(occupied_property.occupied?).to be true
			end
		end

		context 'when the property has no tenants' do	
			it 'returns false' do
				expect(vacant_property.occupied?).to be false
			end
		end

		context 'when the property has no active tenants' do	
			it 'returns false' do
				expect(vacated_property.occupied?).to be false
			end
		end
	end

	describe 'vacant?' do 
		let(:vacant_property){Property.create}
		let(:occupied_property){Property.create}
		let(:vacated_property){Property.create}
		let!(:past_tenant){Tenant.create(property_id: vacated_property.id, status: 'past tenant')}
		let!(:active_tenant){Tenant.create(property_id: occupied_property.id, status: 'active tenant')}

		context 'when the property has no associated tenants' do
			it 'returns true' do 
				expect(vacant_property.vacant?).to be true
			end
		end

		context 'when the property has tenants that are not active' do
			it 'returns true' do 
				expect(vacated_property.vacant?).to be true
			end
		end

		context 'when the property has an active tenant' do
			it 'returns false' do
				expect(occupied_property.vacant?).to be false
			end
		end

	end


end
