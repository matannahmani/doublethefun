Rails.application.routes.draw do
  devise_for :users
  resources :events, only: [:new, :new, :show, :edit]
  root to: 'events#index'
  get 'dashboard', to: 'dashboards#index'
  delete '/events/:id', to: 'events#destroy', as: :destroy
  post '/events/create', to: 'events#create', as: :create
  patch '/events/:id/update', to: 'events#update', as: :update
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events do
    resources :attendance, only:[:create]
  end
end
