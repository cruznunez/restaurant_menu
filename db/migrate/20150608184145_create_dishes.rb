class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.references :course, index: true, foreign_key: true
      t.string :name
      t.float :price
      t.string :description
      t.string :img_path

      t.timestamps null: false
    end
  end
end
