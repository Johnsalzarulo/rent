class Property < ActiveRecord::Base

	belongs_to :landlord
	has_many :tenants
	has_many :issues
  has_many :notes
  has_many :accounting_transactions
	has_many :rent_payments, through: :tenants

    def self.occupied
      select do |record| 
      	record.occupied?
      end
    end


    def self.vacant
      select do |record| 
      	record.vacant?
      end
    end

	def occupied?
      tenants.active.any?
	end

	def vacant?
		tenants.active.empty?
	end

  def tenant
    self.id = id
    Tenant.find(property_id = id)
  end



end