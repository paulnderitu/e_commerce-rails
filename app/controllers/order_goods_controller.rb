class OrderGoodsController < ApplicationController
  def create
    @order = current_order
    @good = @order.order_goods.new(good_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to products_path
  end

  def destroy
    @order = current_order
    @good = @order.order_goods.find(params[:id])
    @good.destroy
    @order.save
    redirect_to cart_path
  end

  private

  def good_params
    params.require(:order_good).permit(:quantity, :product_id)
  end
end
