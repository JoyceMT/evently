class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :phone
      t.integer :price
      t.string :facebook
      t.string :instagram

      t.timestamps
    end
  end
end
