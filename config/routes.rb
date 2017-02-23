Rails.application.routes.draw do
  resources :messages
  resources :sessions, only: [:new, :create] 
  resources :users
  root 'home#index'
  delete 'log_out' => 'sessions#destroy'
end
