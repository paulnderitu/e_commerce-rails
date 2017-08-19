class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.column :title, :string
      t.column :link, :string
      t.column :picture, :string

      t.timestamps
    end
  end
end
