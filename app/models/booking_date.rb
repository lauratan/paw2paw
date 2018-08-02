class BookingDate < ApplicationRecord
  belongs_to :booking

  validates :booking_id, :date, presence: true
end
