class UsersController < ApplicationController

  def show
  	@user = User.find(params[:id])
  	#@userc = User.where(params[:id], :include => :comments)
  end

  def index
  	@users = User.all
  end

end
