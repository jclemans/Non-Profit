Donations::Application.routes.draw do

  resources :non_profits
  resources :donations
  resources :charges
  root to: 'non_profits#index'
end
