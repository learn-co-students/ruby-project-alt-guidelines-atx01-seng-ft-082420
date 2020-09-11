class Player < ActiveRecord::Base

    has_many :quests
    has_many :npcs, through: :quests

end