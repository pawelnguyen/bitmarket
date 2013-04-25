BitcoinMarket::Application.routes.draw do
  devise_for :users, controllers: { registrations: 'user_registrations' }

  resources :offers
  resource :wallet
  resource :dashboard

  root :to => 'dashboard#index'
end
