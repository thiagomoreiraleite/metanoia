Rails.application.routes.draw do
  get 'contact/new'
  resources :contacts, only: [:new, :create]
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
