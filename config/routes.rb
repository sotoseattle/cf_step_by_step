Rails.application.routes.draw do
  resources :guides

  root 'guides#index'
end
