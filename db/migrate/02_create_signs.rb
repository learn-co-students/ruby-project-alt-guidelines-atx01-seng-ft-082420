class CreateSigns < ActiveRecord::Migration[5.2]
    def change 
        create_table :signs do |t|
            t.integer :horoscope_id 
            t.string :name
            t.string :symbol
            t.string :element 
        end 
    end 
end 