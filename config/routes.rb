Rails.application.routes.draw do
  get 'pages/root'
  get 'pages/proyecto'
  get 'pages/caracteristicas'
  get 'pages/documentacion'
  get 'pages/soporte'
  get 'pages/registrarse'
  get 'pages/inicio_Sesion'
  resources :experiment_tests
  resources :lab_leds
  devise_for :users
  root to: 'visitors#index'
end
