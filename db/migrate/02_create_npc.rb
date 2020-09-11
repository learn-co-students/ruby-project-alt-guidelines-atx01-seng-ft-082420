class CreateNpc < ActiveRecord::Migration[5.2]
    def change
        create_table :npcs do |t|
            t.string :name
            t.text :speech
        end
    end
end