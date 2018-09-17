class Department < ApplicationRecord
	has_many :cities, dependent: :destroy
end