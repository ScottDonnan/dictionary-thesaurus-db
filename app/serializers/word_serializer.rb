class WordSerializer < ActiveModel::Serializer
  attributes :id, :name, :times_searched
end
