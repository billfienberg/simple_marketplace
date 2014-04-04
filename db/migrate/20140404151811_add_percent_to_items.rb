class AddPercentToItems < ActiveRecord::Migration
  def change
    add_column :items, :percent, :integer
  end
end
