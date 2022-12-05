class Review < ApplicationRecord
  belongs_to :activity
  validates :comment, presence: true
  validates :title, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true}
end
