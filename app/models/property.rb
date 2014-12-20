class Property < ActiveRecord::Base

	belongs_to :landlord
	has_many :tenants
	has_many :issues
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
      !tenants.empty?
	end

	def vacant?
		tenants.empty?
	end


end