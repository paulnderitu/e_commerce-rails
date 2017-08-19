class ProductsController < ApplicationController
  def new
    @brand = Brand.find(params[:brand_id])
    @product = @brand.products.new
  end

  def create
    @brand = Brand.find(params[:brand_id])
    @product = @brand.products.new(product_params)
    if @product.save
      redirect_to brand_path(@product.brand)
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:item)
  end
end
