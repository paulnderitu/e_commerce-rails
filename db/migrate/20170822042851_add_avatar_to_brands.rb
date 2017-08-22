class AddAvatarToBrands < ActiveRecord::Migration[5.1]
  def change
    add_column :brands, :avatar, :string
  end
end
