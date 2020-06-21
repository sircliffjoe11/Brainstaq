Rails.application.routes.draw do
  root to: "home#index"
  
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}, :controllers => {
    registrations: 'registrations'
  }


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :ideas, only: [:show, :index, :new, :create, :edit, :update, :destroy] do
    resources :comments
    member do
      put 'like', to: "ideas#like"
      put 'unlike', to: "ideas#unlike"
    end
  end

  post "follow/user" => "users#follow_user", as: :follow_user
  
  get 'pages/about'
  get 'pages/career'
  get 'pages/help'
  get 'pages/terms' 
  get 'pages/privacy'

  get 'search' => 'search#index'

  get 'profile/:username' => 'users#profile', as: :profile

  get '/dashboard' => 'users#index'

  # get 'users/:id/ideas' => 'users#ideas', :as => :user_ideas
  


  resources :users, only: [:profile] do
    get :ideas
  end
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
