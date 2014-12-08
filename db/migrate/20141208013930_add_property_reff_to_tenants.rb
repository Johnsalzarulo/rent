class AddPropertyReffToTenants < ActiveRecord::Migration
  def change
  	    add_reference :tenants, :property, index: true
  end
end
