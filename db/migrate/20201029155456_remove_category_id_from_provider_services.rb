class RemoveCategoryIdFromProviderServices < ActiveRecord::Migration[6.0]
  def change
    remove_column :provider_services, :category_id
  end
end
