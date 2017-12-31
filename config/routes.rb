Rails.application.routes.draw do

  resources :categories
  devise_for :users
  #get 'welcome/index'
  #get "paginicio", to: "welcome#index" -> etiquetas
  
  #NESTED RESOURCES, recursos anidados
  resources :articles do
   resources :comments, only: [:create, :destroy, :update]
  end
  
  #Ruta raiz
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
