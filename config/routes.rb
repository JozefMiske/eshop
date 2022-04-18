Rails.application.routes.draw do
  resources :reviews
  resources :productclears
  resources :products

  root "products#index" 
  get "/contact", to: "pages#contact"

end
