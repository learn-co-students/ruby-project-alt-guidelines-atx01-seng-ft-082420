class CreateHoroscopes < ActiveRecord::Migration[5.2]
    def change 
        create_table :horoscopes do |t|
            t.string :hates
            t.string :favorites
            t.string :vibe
            t.string :compatibility
            t.string :mental_traits
            t.string :physical_traits
        end 
    end 
end 