class Tenant < ActiveRecord::Base
	belongs_to :property
	belongs_to :landlord
	has_many :rent_payments
end
