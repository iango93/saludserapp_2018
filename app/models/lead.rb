class Lead < ApplicationRecord
  belongs_to :email
  belongs_to :address
end
