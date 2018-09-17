class Company < ApplicationRecord
  belongs_to :email
  belongs_to :identification
  belongs_to :address
  belongs_to :state
  has_many :headquarters, dependent: :destroy
  has_many :invoices, dependent: :destroy
  has_many :entities, dependent: :destroy
  has_many :customers, dependent: :destroy
  has_many :settleds, dependent: :destroy
  has_many :incidents, dependent: :destroy
  has_many :consecutives, dependent: :destroy
end
