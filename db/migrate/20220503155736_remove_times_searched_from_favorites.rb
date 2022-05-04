class RemoveTimesSearchedFromFavorites < ActiveRecord::Migration[6.1]
  def change
    remove_column :favorites, :times_searched, :integer
  end
end
