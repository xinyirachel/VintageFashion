class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category

  enum condition: {fair: 1, good: 2, excellent: 3, mint: 4}

  has_one_attached :picture
end
