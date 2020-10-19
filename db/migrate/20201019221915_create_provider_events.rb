class CreateProviderEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :provider_events do |t|
      t.references :event, null: false, foreign_key: true
      t.references :provider, null: false, foreign_key: true

      t.timestamps
    end
  end
end
