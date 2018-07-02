Rails.application.routes.draw do
  get 'home/resultado'
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
