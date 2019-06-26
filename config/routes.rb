Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :islands do
    resources :bookings, only: [:new, :create] do
      member do
        resources :transports, only: [:index, :show]
      end
    end
  end


resources :bookings, only: [:destroy, :index]
end
