class Booking < ApplicationRecord
  validates :user_id, :sitter_id, presence: true
  has_many :booking_dates
end
