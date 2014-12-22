class AddPropertyReferenceToAccountingTransactions < ActiveRecord::Migration
  def change
  	  	 add_reference :accounting_transactions, :property, index: true
  end
end
