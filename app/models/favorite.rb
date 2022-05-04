class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :word

    validates :name, uniqueness: { scope: :user_id }
end
