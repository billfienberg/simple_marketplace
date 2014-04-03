class Seller < ActiveRecord::Base
	has_many :transactions
	has_many :buyers, through: :transactions
	has_many :items
end
