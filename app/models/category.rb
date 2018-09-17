class Category < ApplicationRecord
  belongs_to :state
  has_many :entities, dependent: :destroy
  has_many :states, dependent: :destroy
end
