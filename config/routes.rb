Rails.application.routes.draw do
  root  'pages#home'
  get   'about' ,to:'pages#about'
  resources :articles, only: [:show, :index, :new,:create,:edit, :update, :destroy]
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  # post 'user', to: 'user#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
