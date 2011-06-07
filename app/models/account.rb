class Account < ActiveRecord::Base
  has_one :subscription_address
  has_many :payments
  has_one :subscription
  belongs_to :user, :polymorphic => true
end
