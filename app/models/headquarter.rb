class Headquarter < ApplicationRecord
  belongs_to :company
  belongs_to :address
  belongs_to :email
  belongs_to :state
  has_many :folios, dependent: :destroy
  has_many :invoices, dependent: :destroy
  has_many :settleds, dependent: :destroy
  has_many :incidents, dependent: :destroy
end
