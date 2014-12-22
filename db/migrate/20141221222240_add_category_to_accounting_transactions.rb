class AddCategoryToAccountingTransactions < ActiveRecord::Migration
  def change
    add_column :accounting_transactions, :category, :string
  end
end
