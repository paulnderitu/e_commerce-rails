class ProductsController < ApplicationController
  def new
    @brand = Brand.find(params[:brand_id])
    @product = @brand.products.new
  end
end
