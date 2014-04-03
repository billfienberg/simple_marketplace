class AddOrganizationReferencesToTransaction < ActiveRecord::Migration
  def change
    add_reference :transactions, :organization, index: true
  end
end
