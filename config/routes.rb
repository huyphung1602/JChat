Rails.application.routes.draw do
  resources :friendships, only: [:new, :create]
  resources :messages
  resources :sessions, only: [:new, :create] 
  resources :users
  root 'home#index'
  delete 'log_out' => 'sessions#destroy'
  get 'all_friends' => 'users#all_friends'
  delete 'unfriend' => 'friendships#destroy'
  get 'sent_messages' => 'messages#sent_messages'
end
