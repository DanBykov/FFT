class UsersController < ApplicationController
	def index
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def destroy
  	User.find(params[:id]).destroy
    redirect_to :back
  end
end