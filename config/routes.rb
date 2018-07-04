Rails.application.routes.draw do


  get 'home/resultado', to: 'home#resultado'
  get 'home/publicacion'
  get 'publicar/show'
  get 'home/index'
  root 'home#index'
  resources :users do
    collection do
      get :login
    end
    member do
      get :publicar
    end
  end
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
