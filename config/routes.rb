Rails.application.routes.draw do
  root 'articles#index'
  
  resources :employees
  # public page router
  get 'about' => 'pages#about_us'
  get 'contact' => 'pages#contact_us'
  get 'privact_policy' => 'pages#privacy_policy'
  get 'terms_and_conditions' => 'pages#terms_and_conditions'

end
