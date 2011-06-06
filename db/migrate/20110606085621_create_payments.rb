class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :amount
      t.string :state
      t.string :protocol
      t.integer :account_id
      t.text :details
      t.integer :gateway_id

      t.timestamps
    end
  end
end
