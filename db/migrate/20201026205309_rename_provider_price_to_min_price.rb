class RenameProviderPriceToMinPrice < ActiveRecord::Migration[6.0]
  def change
    rename_column :providers, :price, :min_price
  end
end
