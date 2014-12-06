class AddLandlordrRefToProperties < ActiveRecord::Migration
  def change
    add_reference :properties, :landlord, index: true
  end
end
