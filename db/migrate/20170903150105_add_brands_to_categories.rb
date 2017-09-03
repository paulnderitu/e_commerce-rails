class AddBrandsToCategories < ActiveRecord::Migration[5.1]
  def change
    add_reference :categories, :brands, foreign_key: true
  end
end
