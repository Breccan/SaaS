class CreateSubscriptionAddresses < ActiveRecord::Migration
  def change
    create_table :subscription_addresses do |t|
      t.integer :account_id
      t.string :town
      t.string :city
      t.string :postcode
      t.string :country
      t.string :line1
      t.string :line2

      t.timestamps
    end
  end
end
