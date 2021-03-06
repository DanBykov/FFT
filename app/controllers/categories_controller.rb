class CategoriesController < ApplicationController
  def index
    @categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
    end
  end
  
  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @games = @category.games.paginate(page: params[:page], per_page: 18)    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category }
    end
  end
end
