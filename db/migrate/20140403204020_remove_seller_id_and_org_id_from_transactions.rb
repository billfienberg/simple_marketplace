class RemoveSellerIdAndOrgIdFromTransactions < ActiveRecord::Migration
  def change
  	remove_column :transactions, :organization_id
  	remove_column :transactions, :seller_id
  end
end
