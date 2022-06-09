class User < ApplicationRecord
    has_many :items
    has_many :ratings
    has_many :reviews
end
