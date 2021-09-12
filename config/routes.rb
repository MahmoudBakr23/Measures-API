Rails.application.routes.draw do
  post 'signup', to: 'users#create'
  post 'login', to: 'sessions#login'
  get 'logged_in', to: 'sessions#logged_in'
  delete 'logout', to: 'sessions#logout'
  resources :measures, only: %i[show]
  get 'all/measures', to: 'measures#index'
  post 'create/measure', to: 'measures#create'
  delete 'delete/measure', to: 'measures#destroy'
end
