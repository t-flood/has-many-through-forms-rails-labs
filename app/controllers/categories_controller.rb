class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    redirect_to category_path(@category)
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
