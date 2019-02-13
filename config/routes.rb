Rails.application.routes.draw do
  resources :planets, only: [:index, :show]
  resources :guides

  get 'search_results', to: 'search#results', as: 'search_results'

  root to: 'guides#index'
end
