class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :account_id
      t.string :name
      t.integer :base_cost
      t.string :period

      t.timestamps
    end
  end
end
