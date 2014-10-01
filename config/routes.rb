Rails.application.routes.draw do
  resources :guides do
    resources :steps
  end

  root 'guides#index'
end
