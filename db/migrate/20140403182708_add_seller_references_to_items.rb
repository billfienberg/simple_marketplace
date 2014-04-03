class AddSellerReferencesToItems < ActiveRecord::Migration
  def change
    add_reference :items, :seller, index: true
  end
end
