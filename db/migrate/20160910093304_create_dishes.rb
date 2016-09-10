class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.text :nazwa
      t.text :skladniki

      t.timestamps null: false
    end
  end
end
