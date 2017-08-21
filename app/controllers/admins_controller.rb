class AdminsController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @brand = Brand.find(params[:brand_id])
    @product = @brand.products.find(params[:id])
    @product.destroy
    flash[:notice] = 'Product deleted successfully!'
    redirect_to brands_path
  end
end
