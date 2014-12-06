class RemovePhoneFromTenants < ActiveRecord::Migration
  def change
    remove_column :tenants, :phone, :integer
  end
end
