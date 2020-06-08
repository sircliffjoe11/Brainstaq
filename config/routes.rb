Rails.application.routes.draw do
  get 'search/index'
  root to: "home#index"
  
  devise_for :users, :controllers => {
    registrations: 'registrations'
  }


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :ideas, only: [:show, :index, :new, :create, :edit, :update, :destroy] do
    resources :comments
  end
  
  get 'pages/about'
  get 'pages/career'
  get 'pages/help'
  get 'pages/terms'
  get 'pages/privacy'

  get 'search' => 'search#index'

  get '/:username' => 'home#profile', as: :profile
  
  resources :users, only: [:show, :edit, :update, :create]
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
