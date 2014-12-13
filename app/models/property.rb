class Property < ActiveRecord::Base

	belongs_to :landlord
	has_many :tenants
	has_many :issues
	has_many :rent_payments, through: :tenants

	scope :active, -> { where status: 'Occupied' }
	scope :vacant, -> { where status: 'Vacant' }
	scope :occupied, -> { where tenants: 'Occupied' }
	scope :created_before, ->(time) { where("created_at < ?", time) }

end