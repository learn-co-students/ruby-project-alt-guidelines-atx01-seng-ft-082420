class Npc < ActiveRecord::Base
    has_many :quests
    has_many :players, through: :quests
end