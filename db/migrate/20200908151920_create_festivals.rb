class CreateFestivals < ActiveRecord::Migration[5.2]
  def change
    create_table :festivals do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.text :artist
    end
  end
end
