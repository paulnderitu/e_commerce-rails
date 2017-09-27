class BrandsCategories < ActiveRecord::Migration[5.1]
  def change
    create_join_table :brands, :categories do |t|
      t.index %i[brand_id category_id]
    end
  end
end
