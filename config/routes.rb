Rails.application.routes.draw do
  root "places#index"
  resources :places
  resources :categories, only: [:index, :show]
  post "/comments", to: 'comments#create', as: 'comments'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
