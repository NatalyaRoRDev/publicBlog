Rails.application.routes.draw do
  get '/' => 'home#index'

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  resource :contacts, only: [:new, :create]
  resources :articles

end
