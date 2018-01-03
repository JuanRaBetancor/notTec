class WelcomeController < ApplicationController
  #before_action :authenticate_admin!,only: [:dashboard]
  before_action :authenticate_editor!,only: [:dashboard]
  def index
  end
  
  
  def dashboard
    @articles = Article.all
  end
  
  
end
