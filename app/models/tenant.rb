class Tenant < ActiveRecord::Base
	belongs_to :property
	belongs_to :landlord
	has_many :rent_payments
	has_many :messages

  scope :active, -> { where status: 'active tenant'}
  scope :potential, -> { where status: 'potential tenant' }
  scope :past, -> { where status: 'past tenant' }

end
