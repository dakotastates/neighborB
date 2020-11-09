Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show, :update, :destroy]
      resources :board_messages, only: [:index, :create, :destroy]
      resources :messages, only: [:index, :create, :destroy]


      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'

    end
  end
end
