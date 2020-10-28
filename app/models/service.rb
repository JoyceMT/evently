class Service < ApplicationRecord
  belongs_to :category, optional: true
end
