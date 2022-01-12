Rails.application.routes.draw do

  resources :mobiles
  devise_for :users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  namespace :api do
    post 'areas/get_area'
    post 'mobiles/get_mobile'
  end
end
