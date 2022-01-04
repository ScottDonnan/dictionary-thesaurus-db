class RemoveColumnFromFavorites < ActiveRecord::Migration[6.1]
  def change
    remove_column :favorites, :word_id, :integer
    add_column :favorites, :name, :string
  end
end
