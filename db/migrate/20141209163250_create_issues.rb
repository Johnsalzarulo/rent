class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :note
    end
  end
end
