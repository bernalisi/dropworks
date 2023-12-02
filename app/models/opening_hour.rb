class OpeningHour < ApplicationRecord
belongs_to :venue

  enum day: { monday: 0, tuesday: 1, wednesday: 2, thursday: 3, friday: 4, saturday: 5, sunday: 6 }

  validates :day, presence: true
  validates :open_time, presence: true
  validates :close_time, presence: true

end
