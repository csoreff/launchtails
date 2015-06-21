class CategoriesController < ApplicationController
  def index
    @categories = Category.all.page(params[:page])
  end

  def show
    @drinks = Drink.where("category_id = ?", params[:id]).page(params[:page])
  end
end
