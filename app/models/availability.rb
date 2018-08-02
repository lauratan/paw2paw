class Availability < ApplicationRecord
  belongs_to :sitter
  
  validates :sitter_id, :avail_date, presence: true
  
end
