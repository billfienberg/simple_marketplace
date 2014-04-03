class Item < ActiveRecord::Base
	belongs_to :seller 
	has_one :transaction
	has_one :buyer, through: :transactions
end
