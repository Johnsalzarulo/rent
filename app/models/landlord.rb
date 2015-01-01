class Landlord < ActiveRecord::Base
	has_secure_password
	has_many :properties
	has_many :tenants, through: :properties
	has_many :rent_payments, through: :properties
	has_many :issues, through: :properties 
	has_many :accounting_transactions, through: :properties
end
