class AddPhoneToTenants < ActiveRecord::Migration
  def change
    add_column :tenants, :phone, :string
  end
end
