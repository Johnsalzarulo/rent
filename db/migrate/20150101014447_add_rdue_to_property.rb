class AddRdueToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :rdue, :integer
  end
end
