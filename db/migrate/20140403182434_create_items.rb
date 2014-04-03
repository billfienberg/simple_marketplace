class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :price
      t.text :photo1
      t.text :photo2
      t.text :photo3
      t.boolean :sold

      t.timestamps
    end
  end
end
