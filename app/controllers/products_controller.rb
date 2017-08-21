class ProductsController < ApplicationController
  before_action :authenticate_user!
  def new
    @brand = Brand.find(params[:brand_id])
    @product = @brand.products.new
  end

  def show
    @brand = Brand.find(params[:brand_id])
    @product = @brand.products.find(params[:id])
  end

  def create
    @brand = Brand.find(params[:brand_id])
    @product = @brand.products.new(product_params)
    @user = @product.user
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

  def destroy
    @brand = Brand.find(params[:brand_id])
    @product = @brand.products.find(params[:id])
    @product.destroy
    flash[:notice] = 'Product deleted successfully!'
    redirect_to brands_path
  end

  private

  def product_params
    params.require(:product).permit(:item, :vote, :picture, :brand_id, :user_id)
  end
end
