class PaymentMethod < ApplicationRecord
  belongs_to :state
  has_many :invoices, dependent: :destroy
end
