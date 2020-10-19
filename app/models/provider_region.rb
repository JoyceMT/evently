class ProviderRegion < ApplicationRecord
  belongs_to :region
  belongs_to :provider
end
