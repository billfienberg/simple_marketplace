class AddDefaultValueFalseToSoldColumnInItem < ActiveRecord::Migration
  def change
  	change_column :items, :sold, :boolean, :default => false
  end
end
