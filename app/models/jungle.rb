class Jungle < ApplicationRecord
  has_many :plants, dependent: :destroy
end
