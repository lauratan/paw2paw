class Sitter < ApplicationRecord
  validates :name, :address, :summary, :rules, :price, :user_id, presence: true
  has_many :photos
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

end
