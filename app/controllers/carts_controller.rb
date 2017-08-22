class CartsController < ApplicationController
  def show
    @order_goods = current_order.order_goods
  end
end
