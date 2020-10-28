class ProviderRegion < ApplicationRecord
  belongs_to :region
  belongs_to :provider

  accepts_nested_attributes_for :region
end
