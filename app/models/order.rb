class Order < ApplicationRecord
  has_many :order_goods
  before_save :update_total
  before_create :update_status

  def calculate_total
    order_goods.collect { |good| good.product.price * good.quantity }.sum
  end

  private

  def update_status
    self.status = 'In progress' if status == nil?
  end

  def update_total
    self.total_price = calculate_total
  end
end
