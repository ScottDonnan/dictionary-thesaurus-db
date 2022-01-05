class DropWordTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :words
  end
end
