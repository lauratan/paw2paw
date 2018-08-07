class Review < ApplicationRecord
    validates :sitter_id, :user_id, :content, :rating, presence: true
    validates :rating, inclusion: 1..5

    belongs_to :user
    belongs_to :sitter
end
