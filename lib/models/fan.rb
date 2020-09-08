class Fan < ActiveRecord::Base
    has_many :tickets
    has_many :festivals, through: :tickets
end