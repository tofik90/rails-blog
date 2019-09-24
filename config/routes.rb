Rails.application.routes.draw do
  get 'home/index'
  get '/terms', to: 'pages#terms'
  get '/about', to: 'pages#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



Blog::Application.routes.draw do
  resources :contacts, only: [:new, :create], path_names: { :new => ''}
  resources :articles do 
    resources :comments, only: [:create]
  end
end





