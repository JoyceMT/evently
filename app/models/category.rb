class Category < ApplicationRecord
  has_many :provider_categories
  has_many :services
end
