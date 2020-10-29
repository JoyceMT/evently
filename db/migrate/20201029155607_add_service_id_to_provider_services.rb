class AddServiceIdToProviderServices < ActiveRecord::Migration[6.0]
  def change
    add_reference :provider_services, :service, foreign_key: true
  end
end
