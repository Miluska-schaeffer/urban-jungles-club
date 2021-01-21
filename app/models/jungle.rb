class Jungle < ApplicationRecord
  has_many :plants, dependent: :destroy
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
