class RemoveImageUrlFromVenues < ActiveRecord::Migration[7.1]
  def change
    remove_column :venues, :image_url, :string
  end
end
