class RenameProviderCategoriesToProviderServices < ActiveRecord::Migration[6.0]
  def change
    rename_table :provider_categories, :provider_services
  end
end
