class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.string :user_type
      t.string :state

      t.timestamps
    end
  end
end
