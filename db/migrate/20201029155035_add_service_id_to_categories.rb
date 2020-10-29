class AddServiceIdToCategories < ActiveRecord::Migration[6.0]
  def change
    add_reference :categories, :service, foreign_key: true
  end
end
