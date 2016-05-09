Rails.application.routes.draw do

  devise_for :users
  resources :categories do
    resources :suscriptions, except: [:index, :show]
  end
  resources :leads

  root 'leads#index'

end
