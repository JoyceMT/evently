class CreateProviderRegions < ActiveRecord::Migration[6.0]
  def change
    create_table :provider_regions do |t|
      t.references :region, null: false, foreign_key: true
      t.references :provider, null: false, foreign_key: true

      t.timestamps
    end
  end
end
