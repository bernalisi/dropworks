class ChangeColumnTypeInOpeningHours < ActiveRecord::Migration[7.1]
  def change
        change_column :opening_hours, :day, 'integer USING CAST(day AS integer)'
  end
end
