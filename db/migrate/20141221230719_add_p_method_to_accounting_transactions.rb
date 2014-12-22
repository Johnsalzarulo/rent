class AddPMethodToAccountingTransactions < ActiveRecord::Migration
  def change
    add_column :accounting_transactions, :p_method, :string
  end
end
