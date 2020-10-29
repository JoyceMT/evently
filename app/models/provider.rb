class Provider < ApplicationRecord
  has_many :provider_services
  has_many :services, through: :provider_services
  has_many :provider_events
  has_many :events, through: :provider_events
  has_many :provider_regions
  has_many :regions, through: :provider_regions
end
