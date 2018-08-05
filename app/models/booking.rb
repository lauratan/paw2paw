class Booking < ApplicationRecord
    has_many :booking_dates
    belongs_to :user
    belongs_to :sitter
    
    validates :user_id, :sitter_id, :dog_breed, :dog_size, :dog_age, :dog_gender, :dog_name, :status, presence: true
end