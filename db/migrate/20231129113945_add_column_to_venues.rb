class AddColumnToVenues < ActiveRecord::Migration[7.1]
  def change
    add_column :venues, :image_urls, :text, default: [], array: true
  end
end
