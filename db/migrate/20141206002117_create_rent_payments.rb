class CreateRentPayments < ActiveRecord::Migration
  def change
    create_table :rent_payments do |t|
      t.integer :ammount
      t.date :date_due
      t.date :date_paid
      t.string :status
      t.string :reff
      t.string :method

      t.timestamps
    end
  end
end
