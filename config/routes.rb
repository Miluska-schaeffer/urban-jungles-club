Rails.application.routes.draw do
  root to: "pages#home"
  resources :jungles  do
    resources :plants, only: [:new, :create]
  end
  resources :plants, only: [ :update, :edit, :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
