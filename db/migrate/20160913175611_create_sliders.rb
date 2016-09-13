class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.text :tytul
      t.text :krotki_opis
      t.integer :artykul

      t.timestamps null: false
    end
  end
end
