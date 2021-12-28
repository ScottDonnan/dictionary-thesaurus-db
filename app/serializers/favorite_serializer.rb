class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :word_id, :user_id

  belongs_to :word
end
