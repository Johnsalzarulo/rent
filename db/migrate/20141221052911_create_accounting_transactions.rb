class CreateAccountingTransactions < ActiveRecord::Migration
  def change
    create_table :accounting_transactions do |t|
      t.float :ammount
      t.string :reff_number
      t.string :type
      t.string :notes
      t.timestamps
    end
  end
end
