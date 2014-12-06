class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :address
      t.string :email
      t.integer :phone
      t.string :status

      t.timestamps
    end
  end
end
