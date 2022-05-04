class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :times_searched
end
