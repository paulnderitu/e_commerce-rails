class ProductsController < ApplicationController
  def new
    @brand = Brand.find(params[:brand_id])
    @product = @brand.products.new
  end

  def create
    @brand = Brand.find(params[:brand_id])
    @product = @brand.products.new(product_params)
    if @product.save
      flash[:notice] = 'Product added successfully!'
      redirect_to brand_path(@product.brand)
    else
      render :new
    end
  end

  def edit
    @brand = Brand.find(params[:brand_id])
    @product = @brand.products.find(params[:id])
    render :edit
  end

  def update
    @brand = Brand.find(params[:brand_id])
    @product = @brand.products.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = 'Product updated successfully!'
      redirect_to brands_path
    else
      render :edit
    end
  end

  private

  def product_params
    params.require(:product).permit(:item, :vote, :brand_id, :user_id)
  end
end
