class GamesController < ApplicationController
  # GET /games
  # GET /games.json
  def index
    @games = Game.paginate(page: params[:page], per_page: 18)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end

  # GET /games/1
  # GET /games/1.json
  def show
    @game = Game.find(params[:id])
    @games = Game.all
    @comment = current_user.comments.build 
    @comments = @game.comments.paginate(page: params[:page], per_page: 8)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game }
    end
  end
  
  def rate
    @game = Game.find(params[:id])
    @game.rate(params[:stars], current_user, params[:dimension])
    respond_to do |format|
      format.js
    end
  end
end