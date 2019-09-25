Rails.application.routes.draw do

  root to: "home#index"
  get 'home/index'
  get '/terms', to: 'pages#terms'
  get '/about', to: 'pages#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



Blog::Application.routes.draw do
  devise_for :users
  resources :contacts, only: [:new, :create], path_names: { :new => ''}
  resources :articles do 
    resources :comments, only: [:create]
  end
end



