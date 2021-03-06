Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#home"
  resources :users, only: [:new, :create, :show]
  post '/signin', to: 'session#create'
  get '/signin', to: 'session#new'
end
