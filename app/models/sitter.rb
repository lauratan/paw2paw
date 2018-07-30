class Sitter < ApplicationRecord
  validates :name, :address, :summary, :rules, :price, :user_id, presence: true

  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

end
