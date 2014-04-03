class AddDefaultConfirmationValuesToTranscations < ActiveRecord::Migration
  def change
  	change_column :transactions, :seller_confirmation, :boolean, :default => false
  	change_column :transactions, :buyer_confirmation, :boolean, :default => false
  end
end
