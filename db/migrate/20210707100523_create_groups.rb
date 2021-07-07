class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.index :name, unique: true
      t.timestamps
      t.integer :owner_id, index: true
    end
    add_foreign_key :groups, :users, column: :owner_id
  end
end
