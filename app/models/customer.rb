class Customer < ApplicationRecord
  belongs_to :identification
  belongs_to :address
  belongs_to :email
  belongs_to :staff
  belongs_to :account
  belongs_to :company
  belongs_to :state
  belongs_to :entity
  has_many :invoices, dependent: :destroy
  has_many :beneficiaries, dependent: :destroy
  has_many :settleds, dependent: :destroy
  has_many :incidents, dependent: :destroy
  has_many :consecutives, dependent: :destroy
  has_one :folio
end
