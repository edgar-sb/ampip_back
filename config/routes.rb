Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user_informations
      resources :user_changes
      resources :users
      resources :test
      resources :contacts
      resources :corporate_informations
      resources :corporates 
      resources :permissions
      resources :property_informations
      resources :property_users
      resources :propieties
      resources :status_disponibilities
      resources :tenant_historys
      resources :tenant_users
      devise_scope :user do
        post "sign_up", to: "registrations#create"
        post "sign_in", to: "sessions#create"
        get "logout", to: "sessions#destroy"
      end
    end
  end
end
