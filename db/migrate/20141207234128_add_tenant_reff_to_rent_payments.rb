class AddTenantReffToRentPayments < ActiveRecord::Migration
  def change
  	    add_reference :rent_payments, :tenant, index: true
  end
end
