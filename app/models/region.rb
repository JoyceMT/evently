class Region < ApplicationRecord
  has_many :provider_regions
  has_many :providers, through: :provider_regions
end
