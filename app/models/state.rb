class State < ApplicationRecord
	has_many :companies, dependent: :destroy
	has_many :headquarters, dependent: :destroy
	has_many :invoices, dependent: :destroy
	has_many :entities, dependent: :destroy
	has_many :invoices, dependent: :destroy
	has_many :payment_methods, dependent: :destroy
	has_many :identifications, dependent: :destroy
	has_many :customers, dependent: :destroy
	has_many :phones, dependent: :destroy
	has_many :emails, dependent: :destroy
	has_many :roles, dependent: :destroy
	has_many :staffs, dependent: :destroy
	has_many :beneficiaries, dependent: :destroy
	has_many :incidents, dependent: :destroy
end
