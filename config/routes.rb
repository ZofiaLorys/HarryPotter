Rails.application.routes.draw do
  
  root to: 'students#index'
  get 'students', to: 'students#index'
 
  get 'students/:id', to: 'students#show', id: /\d+/
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
