class CreateQuest < ActiveRecord::Migration[5.2]
    def change
        create_table :quests do |t|
            t.string :name
            t.text :description
            t.text :objective
            t.string :quest_reward
            t.integer :player_id
            t.integer :npc_id
        end
    end
end