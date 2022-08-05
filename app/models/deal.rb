class Deal < ActiveRecord::Base
    belongs_to :athlete
    belongs_to :sponsor

end