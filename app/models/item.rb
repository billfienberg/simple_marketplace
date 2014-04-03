class Item < ActiveRecord::Base
	belongs_to :seller
	belongs_to :organization
	has_one :transaction
	has_one :buyer, through: :transactions

	def seller()
		Item.find(2).seller_id
	end


	# Item.create_transaction(params[:buyer_id], seller_id())
end
