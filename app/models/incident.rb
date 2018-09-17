class Incident < ApplicationRecord
  belongs_to :customer
  belongs_to :company
  belongs_to :headquarter
  belongs_to :state
end
