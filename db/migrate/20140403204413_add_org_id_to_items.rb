class AddOrgIdToItems < ActiveRecord::Migration
  def change
  	add_column :items, :organization_id, :integer
  end
end
