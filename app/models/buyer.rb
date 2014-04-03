class Buyer < ActiveRecord::Base
	has_many :transactions 
	has_many :sellers, through: :transactions
end
