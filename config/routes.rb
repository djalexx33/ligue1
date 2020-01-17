Rails.application.routes.draw do
  root to: 'pages#home'
  get 'index', to: 'pages#index', as: :index
end
