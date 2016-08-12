Rails.application.routes.draw do
  root "places#index"
  get 'places/new', to: 'places#new'
  get 'places', to: 'places#index'
  get 'places/:id', to: 'places#show', as: "place"
  post 'places', to: 'places#create'
  get 'places/:id/edit', to: 'places#edit'
  post 'places/:id', to: 'places#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
