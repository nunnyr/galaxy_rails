class User < ApplicationRecord
    has_many :trips
    #has_many :planets, through: :trips
end
