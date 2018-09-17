class Email < ApplicationRecord
  belongs_to :state
  has_many :companies, dependent: :destroy
  has_many :headquarters, dependent: :destroy
  has_many :customers, dependent: :destroy
  has_many :leads, dependent: :destroy
  has_many :accountnames, dependent: :destroy
end
