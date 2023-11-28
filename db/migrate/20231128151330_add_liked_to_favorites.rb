class AddLikedToFavorites < ActiveRecord::Migration[7.1]
  def change
    add_column :favorites, :liked, :boolean
  end
end
