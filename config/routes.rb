Rails.application.routes.draw do
  resources :experiment_tests
  resources :lab_leds
  devise_for :users
  root to: 'visitors#index'
end
