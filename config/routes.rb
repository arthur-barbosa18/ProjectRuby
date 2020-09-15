# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      resources :products do
        get 'sections/:section_id', to: 'products#index_section'
      end
      resources :users, only: [:add_role] do
        post 'add_role', to: 'users#add_role'
      end
      resources :sections
      resources :roles
      resources :demanded_products
      resources :supplies
      resources :box_deliveries
      resources :stores
      resources :received_products do
        patch 'check_received/', to: 'received_products#check_received_product'
      end
    end

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
