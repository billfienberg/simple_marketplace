class Seller < ActiveRecord::Base
	has_many :transactions
	has_one :buyer, through: :transactions
	has_many :items
end
