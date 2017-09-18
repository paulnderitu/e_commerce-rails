class CreateBrandsCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :brands_categories do |t|
      t.column :brand_id, :integer
      t.column :category_id, :integer

      t.timestamps
    end
  end
end
