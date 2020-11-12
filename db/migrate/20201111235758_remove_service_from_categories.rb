class RemoveServiceFromCategories < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories, :service_id, :bigint
  end
end
