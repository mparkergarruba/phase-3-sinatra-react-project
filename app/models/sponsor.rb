class Sponsor < ActiveRecord::Base
    has_many :deals
    has_many :athletes, through: :deals
end