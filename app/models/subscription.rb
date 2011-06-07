class Subscription < ActiveRecord::Base
  has_many :accounts
end
