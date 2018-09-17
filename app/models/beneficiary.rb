class Beneficiary < ApplicationRecord
  belongs_to :customer
  belongs_to :identification
  belongs_to :state
end
