class Activity < ApplicationRecord
  has_many :tags
  has_one_attached :photo
  belongs_to :user
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  include PgSearch::Model
  pg_search_scope :search_by_name_and_description_and_tag_and_location_and_venue,
  against: [ :name, :description, :tag, :location, :venue],
  using: {
    tsearch: { prefix: true }
  }
end
