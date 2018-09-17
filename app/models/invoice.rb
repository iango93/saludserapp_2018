class Invoice < ApplicationRecord
  belongs_to :customer
  belongs_to :company
  belongs_to :headquarter
  belongs_to :payment_method
  belongs_to :staff
  belongs_to :state
  has_many :details, dependent: :destroy
end
