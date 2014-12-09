class AddPropertyReffToIssues < ActiveRecord::Migration
  def change
  	    add_reference :issues, :property, index: true
  end
end