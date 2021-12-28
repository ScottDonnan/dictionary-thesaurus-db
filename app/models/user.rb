class User < ApplicationRecord
    has_many :favorites
    has_many :words, through: :favorites

    has_secure_password
end
