class CreateOpeningHours < ActiveRecord::Migration[7.1]
  def change
    create_table :opening_hours do |t|
      t.integer :day
      t.time :open_time
      t.time :closing_time
      t.references :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
