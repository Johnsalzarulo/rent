class AddTenantReffToMessages < ActiveRecord::Migration
  def change
  	  	add_reference :messages, :tenant, index: true
  end
end
