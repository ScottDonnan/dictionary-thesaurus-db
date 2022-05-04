class AddWordIdToFavorites < ActiveRecord::Migration[6.1]
  def change
    add_column :favorites, :word_id, :integer
    remove_column :favorites, :name, :string
  end
end
