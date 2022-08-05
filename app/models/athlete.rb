class Athlete < ActiveRecord::Base
    has_many :deals
    has_many :sponsors, through: :deals

end