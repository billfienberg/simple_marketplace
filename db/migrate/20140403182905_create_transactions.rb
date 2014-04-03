class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.boolean :buyer_confirmation
      t.boolean :seller_confirmation
      t.references :buyer, index: true
      t.references :seller, index: true
      t.references :item, index: true

      t.timestamps
    end
  end
end
