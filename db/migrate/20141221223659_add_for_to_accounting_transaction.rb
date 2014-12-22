class AddForToAccountingTransaction < ActiveRecord::Migration
  def change
    add_column :accounting_transactions, :for, :string
  end
end
