class RemoveRatingFromVenues < ActiveRecord::Migration[7.1]
  def change
    remove_column :venues, :rating, :float
  end
end
