class Festival < ActiveRecord::Base
    has_many :tickets
    has_many :fans, through: :tickets
    
end