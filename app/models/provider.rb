class Provider < ApplicationRecord
  has_many :provider_categories
  has_many :categories, through: :provider_categories
  has_many :provider_events
  has_many :events, through: :provider_events
  has_many :provider_regions
  has_many :regions, through: :provider_regions
end
