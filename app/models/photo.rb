class Photo < ApplicationRecord
  belongs_to :sitter

  validates :sitter_id, presence: true
  
  validates :photo_url, allow_blank: true, format: {
		with: %r{\.gif|jpg|png}i,
		message: 'Must be a url for gif, jpg, or png image.'
	}
end
