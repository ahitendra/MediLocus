Rails.application.routes.draw do

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

  devise_for :users, :controllers => { registrations: 'registrations' }

  # root :to => 'users#index'
  resources :users do
    collection do
      get 'new_request' => 'users#new_request'
      post 'new_request' => 'users#new_request'
      get 'accept_request' => 'users#accept_request'
    end
  end

  get 'static_pages/home'

  get 'static_pages/help'
  post "/subscribe" => "subscriptions#create"
  post "/push" => "push#create"

  post 'noti' => 'noti_authorisations#new', :as => 'setup_noti'
  get 'noti/callback' => 'noti_authorisations#create', :as => 'noti_callback'
end
