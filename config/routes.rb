Rails.application.routes.draw do

  devise_for :users
  root to: 'charges#new'

  resources :charges, only: [:new, :create]

  get 'thanks', to: 'charges#thanks', as: 'thanks'

  resources :credit_cards
  resources :products
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount StripeEvent::Engine, at: '/payments'
end
