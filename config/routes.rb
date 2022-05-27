Rails.application.routes.draw do
  resources :pages
  namespace :admin do
    resources :pages
    resources :cell_types
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
