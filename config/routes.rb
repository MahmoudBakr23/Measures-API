Rails.application.routes.draw do
  post 'signup', to: 'users#create'
  post 'login', to: 'sessions#login'
  get 'logged_in', to: 'sessions#logged_in'
  delete 'logout', to: 'sessions#logout'
end
