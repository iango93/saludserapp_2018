class Accountname < ApplicationRecord
  belongs_to :address
  belongs_to :identification
  belongs_to :email
  has_many :customers, dependent: :destroy
end
