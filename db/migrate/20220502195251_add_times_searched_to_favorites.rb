class AddTimesSearchedToFavorites < ActiveRecord::Migration[6.1]
  def change
    add_column :favorites, :times_searched, :integer
  end
end
