class ChangeTimesSearchedInFavorites < ActiveRecord::Migration[6.1]
  def change
    change_column_default :favorites, :times_searched, from: nil, to: 0
  end
end
