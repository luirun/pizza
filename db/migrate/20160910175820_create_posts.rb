class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :tytul
      t.text :krotki_opis
      t.text :dlugi_opis
      t.text :tagi

      t.timestamps null: false
    end
  end
end
