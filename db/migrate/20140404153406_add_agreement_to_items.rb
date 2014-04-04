class AddAgreementToItems < ActiveRecord::Migration
  def change
    add_column :items, :agreement, :boolean
  end
end
