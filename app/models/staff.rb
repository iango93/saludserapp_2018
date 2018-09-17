class Staff < ApplicationRecord
  belongs_to :role
  belongs_to :state
  has_many :invoices, dependent: :destroy
  has_many :customers, dependent: :destroy
end
