class Item < ApplicationRecord
    has_many :images 
    has_many :reviews 
    has_many :ratings 
    belongs_to :user
end
