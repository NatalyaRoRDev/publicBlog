Rails.application.routes.draw do
  devise_for :users
  #get '/' => 'home#index'
  root to: "home#index"

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'
  resource :contacts, only: [:new, :create]
  
  resources :articles do
    resources :comments, only: [:create]
  end

end
