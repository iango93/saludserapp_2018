class Identification < ApplicationRecord
  belongs_to :state
  has_many :number_accounts, dependent: :destroy
  has_one :customer
  has_one :settled
  has_one :account
  has_one :beneficiary
  has_one :company
end
