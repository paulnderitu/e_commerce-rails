class AddCategoriesToBrands < ActiveRecord::Migration[5.1]
  def change
    add_reference :brands, :categories, foreign_key: true
  end
end
