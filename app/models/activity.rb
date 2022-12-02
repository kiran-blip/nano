class Activity < ApplicationRecord
  has_many :tags
  has_many_attached :photos
  belongs_to :user
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  include PgSearch::Model
  pg_search_scope :search_all,
                  against: [:name, :description, :tag, :location, :venue],
                  using: {
                    tsearch: { prefix: true }
                  }
  pg_search_scope :search_by_tags, against: [:tag], using: { tsearch: { prefix: true } }
end
