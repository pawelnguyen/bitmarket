BitcoinMarket::Application.routes.draw do
  devise_for :users, controllers: { registrations: 'user_registrations' }

  resources :offers
  resource :wallet

  root :to => 'offers#index'
end
