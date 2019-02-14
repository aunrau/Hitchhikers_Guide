Rails.application.routes.draw do
  resources :planets, only: [:index, :show]
  resources :guides

  get 'search_results', to: 'search#results', as: 'search_results'
  get "/pages/:page" => "pages#show"

  # root "pages#show", page: "home"
  root to: 'guides#index'
end
