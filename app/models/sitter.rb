class Sitter < ApplicationRecord
	mount_uploaders :photos, PhotoUploader

    has_many :availabilities
    has_many :bookings
    has_many :users, through: :bookings
    belongs_to :user
    
    validates :name, :address, :summary, :rules, :user_id, presence: true
    validates :price, numericality: true
    
    geocoded_by :address
    after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
    
end
