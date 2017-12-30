Rails.application.routes.draw do
  devise_for :users
  #get 'welcome/index'
  #get "paginicio", to: "welcome#index" -> etiquetas
  
  #CRUD
  resources :articles 
  
  
  #Ruta raiz
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
