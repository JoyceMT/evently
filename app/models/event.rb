class Event < ApplicationRecord
  has_many :provider_events
  has_many :providers, through: :provider_events
end
