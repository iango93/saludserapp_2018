class City < ApplicationRecord
  belongs_to :department
  has_many :addresses, dependent: :destroy
end
