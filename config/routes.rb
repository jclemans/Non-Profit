Donations::Application.routes.draw do

  root to: 'non_profits#index'

  resources :non_profits
  resources :charges

end
