Rails.application.routes.draw do
  
  get 'users/show'

  resources :categories
  devise_for :users
  resources :users
  get 'welcome/index'
  #get "paginicio", to: "welcome#index" -> etiquetas
  
  #NESTED RESOURCES, recursos anidados
  resources :articles do
   resources :comments, only: [:create, :destroy, :update]
  end
  
  #Ruta raiz
  root 'articles#index'
  
  get "/dashboard", to: "welcome#dashboard"
  
  put "/articles/:id/publish", to: "articles#publish"

  get "infouser", to: "welcome#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
