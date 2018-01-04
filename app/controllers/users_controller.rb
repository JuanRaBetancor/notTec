class UsersController < ApplicationController

  def show
  	@user = User.find(params[:id])
  	#@userc = User.where(params[:id], :include => :comments)
  end

  def destroy
  	@user = User.find(params[:id])
  	if @user.destroy
        redirect_to users_url, notice: "Usuario eliminado"
    end
  end

  def index
  	@users = User.all
  end

end
