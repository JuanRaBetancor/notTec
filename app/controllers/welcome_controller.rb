class WelcomeController < ApplicationController
  #before_action :authenticate_admin!,only: [:dashboard]
  before_action :authenticate_editor!,only: [:dashboard]
  def index
  end
  
  
  def dashboard
    @articles = Article.paginate(page: params[:page],per_page:5).ultimos
  end
  
  
end
