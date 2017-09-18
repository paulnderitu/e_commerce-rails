class BrandsCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :brands_categories do |t|
      t.references :brand, foreign_key: true
      t.references :category, foreign_key: true
    end
  end
end
