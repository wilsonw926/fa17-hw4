Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'new_todo', to:'pages#new', as: 'new_todo'
  post 'new_todo', to:'pages#create'
end
