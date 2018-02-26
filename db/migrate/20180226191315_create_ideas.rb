class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :content
      t.integer :count
      t.references :users, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
