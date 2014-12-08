class RemoveAddressFromTenant < ActiveRecord::Migration
  def change
  	    remove_column :tenants, :address
  end
end
