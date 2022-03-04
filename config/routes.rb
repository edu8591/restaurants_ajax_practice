Rails.application.routes.draw do
  get 'reviews/create'
  resources :restaurants, only: %i[show] do
    resources :reviews, only: :create
  end

  root to: 'restaurants#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
