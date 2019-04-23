Rails.application.routes.draw do
   
  resources :students, only: [:index, :show]
  resources :pages, only: [:show]
  resources :search, only: [:index] do
    collection do
      get 'results'
    end
  end

  get ':permalink', to: 'pages#permalink'
  get 'static_about', to: 'pages#about', as: 'about'
  root to: 'students#index'

end