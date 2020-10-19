class ProviderEvent < ApplicationRecord
  belongs_to :event
  belongs_to :provider
end
