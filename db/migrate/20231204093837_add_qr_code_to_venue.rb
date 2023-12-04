class AddQrCodeToVenue < ActiveRecord::Migration[7.1]
  def change
    add_column :venues, :qr_code, :string
  end
end
