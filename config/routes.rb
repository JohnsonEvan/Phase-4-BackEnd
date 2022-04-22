Rails.application.routes.draw do
  resources :ceos
  resources :supervisors
  resources :managers
  resources :employees
  resources :users
  resources :sessions
  resources :registrations
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "seessions#logged_in"
  
end
