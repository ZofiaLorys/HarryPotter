Rails.application.routes.draw do
   
  resources :students, only: [:index, :show]
  resources :pages, only: [:show]

  get ':permalink', to: 'pages#permalink'
  get 'static_about', to: 'pages#about', as: 'about'
  root to: 'students#index'

end