Rails.application.routes.draw do
  root 'demos#index'

  resources :demos
end
