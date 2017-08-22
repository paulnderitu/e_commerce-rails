class CreateOrderGoods < ActiveRecord::Migration[5.1]
  def change
    create_table :order_goods do |t|
      t.column :quantity, :integer
      t.column :product_id, :integer
      t.column :order_id, :integer

      t.timestamps
    end
  end
end
