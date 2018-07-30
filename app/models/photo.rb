class Photo < ApplicationRecord
  belongs_to :sitter
  validates :photo_url, :sitter_id, presence: true
end
