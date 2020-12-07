Rails.application.routes.draw do
  get '/' => 'home#index'

  resource :contacts, only: [:new, :create]
  resources :articles

end
