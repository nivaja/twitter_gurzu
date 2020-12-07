Rails.application.routes.draw do
  get '/twitters/search/' => 'twitters#search'

  resources :twitters
  resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
