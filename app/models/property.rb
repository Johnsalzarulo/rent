class Property < ActiveRecord::Base
	belongs_to :landlord
	has_many :tenants 
	has_many :rent_payments, through: :tenants
end
