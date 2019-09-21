Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Blog::Application.routes.draw do
  resources :contacts, only: [:new, :create]
  resources :articles
end


