class AddPhoneToLandlords < ActiveRecord::Migration
  def change
    add_column :landlords, :phone, :string
  end
end
