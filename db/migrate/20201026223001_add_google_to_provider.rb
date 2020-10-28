class AddGoogleToProvider < ActiveRecord::Migration[6.0]
  def change
    add_column :providers, :google, :string
  end
end
