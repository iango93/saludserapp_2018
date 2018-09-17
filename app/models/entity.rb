class Entity < ApplicationRecord
  belongs_to :category
  belongs_to :state
  belongs_to :company
  has_many :details, dependent: :destroy
  has_many :customers, dependent: :destroy
end
