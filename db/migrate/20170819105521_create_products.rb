class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :item, :string
      t.column :vote, :integer
      t.column :brand_id, :integer
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
