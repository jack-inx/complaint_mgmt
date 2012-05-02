class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :issue_type
      t.text :description
      t.string :status
      t.boolean :substantiated
      t.string :resolution
      t.references :client
      t.references :doctor
      t.timestamps
    end
  end
end
