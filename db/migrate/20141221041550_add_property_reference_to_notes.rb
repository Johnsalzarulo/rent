class AddPropertyReferenceToNotes < ActiveRecord::Migration
  def change
  	  	add_reference :notes, :property, index: true
  end
end
