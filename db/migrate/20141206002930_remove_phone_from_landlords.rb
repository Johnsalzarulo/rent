class RemovePhoneFromLandlords < ActiveRecord::Migration
  def change
    remove_column :landlords, :phone, :integer
  end
end
