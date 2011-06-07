class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.string :user_type
      t.string :state

      t.timestamps
    end

    add_index :accounts, [:user_id, :user_type]
  end
end
