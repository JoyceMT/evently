class AddCategoryToServices < ActiveRecord::Migration[6.0]
  def change
    add_reference :services, :category, foreign_key: true
  end
end
