Rails.application.routes.draw do
  resources :planets, only: [:index, :show]
  resources :guides

  root to: 'guides#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
