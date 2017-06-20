Rails.application.routes.draw do
  get 'pages/x'

  root 'pages#x'

  post 'pages/new_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
