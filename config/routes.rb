Rails.application.routes.draw do
  root 'featured_drinks#index'
  devise_for :users

  get 'categories/:id/drinks' => 'categories#show'
  resources :drinks, except: [:edit, :update]
  resources :categories, except: [:edit, :update, :destroy]
end
