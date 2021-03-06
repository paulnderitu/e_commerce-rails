class CategoriesController < ApplicationController
  def index
    @response = JSON.parse(Topstories.get_topstories)
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    # @brand = Brand.all.find(@category.brand_id)
  end

  def new
    @category = Category.new
    @brands = Brand.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save

      redirect_to categories_path(@category)
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
    render :edit
  end

  def update
    @category = Category.find(params[:id])
    if @category.create(category_params)
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, brand_ids: [])
  end
end
