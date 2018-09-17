class Role < ApplicationRecord
  belongs_to :state
  has_many :staffs, dependent: :destroy
end
