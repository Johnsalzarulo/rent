class RemoveTypeFromAccountingTransactions < ActiveRecord::Migration
  def change
      remove_column :accounting_transactions, :type
  end
end
