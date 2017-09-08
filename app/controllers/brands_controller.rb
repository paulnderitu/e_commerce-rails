class BrandsController < ApplicationController
  def index
    @response = JSON.parse(Topstories.get_topstories)
    @brands = Brand.all
  end

  def show
    @brand = Brand.find(params[:id])
    @categories = @brand.categories
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      flash[:notice] = 'Brand added successfully!'
      respond_to do |format|
        format.html { redirect_to brands_path(@brand) }
        format.js
      end
    else
      render :new
    end
  end

  def edit
    @brand = Brand.find(params[:id])
    render :edit
  end

  def update
    @brand = Brand.find(params[:id])
    if @brand.update(brand_params)
      flash[:notice] = 'Brand updated successfully!'
      redirect_to brands_path
    else
      render :edit
    end
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy
    flash[:notice] = 'Brand destroyed successfully!'
    redirect_to brands_path
  end

  private

  def brand_params
    params.require(:brand).permit(:title, :link, :avatar, :category_id)
  end
end
