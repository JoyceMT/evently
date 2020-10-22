class Provider < ApplicationRecord
  has_many :categories, through: :provider_categories
  has_many :services, through: :categories
  has_many :events, through: :provider_events
  has_many :regions, through: :provider_regions
end
