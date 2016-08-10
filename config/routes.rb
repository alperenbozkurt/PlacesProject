Rails.application.routes.draw do
  get '/', to: 'places#index'
  get 'show/:id', to: 'places#show' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
