class Settled < ApplicationRecord
  belongs_to :customer
  belongs_to :company
  belongs_to :headquarter
  belongs_to :identification
end
