class AddAboutToBrands < ActiveRecord::Migration[5.1]
  def change
    add_column :brands, :about, :string
  end
end
