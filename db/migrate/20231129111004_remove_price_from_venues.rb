class RemovePriceFromVenues < ActiveRecord::Migration[7.1]
  def change
    remove_column :venues, :price, :float
  end
end
