class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :is_mod

      t.timestamps
    end
    add_index :users, :name
    add_index :users, :email, uniqueness: true
    add_index :users, :is_mod
  end
end
