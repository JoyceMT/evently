class RemoveCategoryIdFromServices < ActiveRecord::Migration[6.0]
  def change
    remove_column :services, :category_id
  end
end
