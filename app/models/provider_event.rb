class ProviderEvent < ApplicationRecord
  belongs_to :event
  belongs_to :provider

  accepts_nested_attributes_for :event
end
