Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :path => 'accounts', controllers: { registrations: "registrations"}
  get 'home/index'
  resources :articles, only: [:show]

  namespace :administrator do
    resources :articles
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
