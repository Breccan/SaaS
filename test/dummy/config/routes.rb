Rails.application.routes.draw do

  devise_for :users

  mount Saas::Engine => "/saas"
end
