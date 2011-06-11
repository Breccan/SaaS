Saas::Engine.routes.draw do

  resources :accounts
  resources :payments
  resources :subscriptions

  namespace :admin do
    resources :accounts
    resources :subscriptions
  end

end
