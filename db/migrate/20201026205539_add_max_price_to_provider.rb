class AddMaxPriceToProvider < ActiveRecord::Migration[6.0]
  def change
    add_column :providers, :max_price, :integer
  end
end
