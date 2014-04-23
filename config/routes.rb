Donations::Application.routes.draw do

  resources :non_profits
  root to: 'non_profits#index'
end
