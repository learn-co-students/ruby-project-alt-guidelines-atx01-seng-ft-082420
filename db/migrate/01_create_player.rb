class CreatePlayer < ActiveRecord::Migration[5.2]
    def change
        create_table :players do |t|
            t.string :name
            t.string :race
            t.string :char_class
            t.text :quest_log
        end
    end
end