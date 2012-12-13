Fft::Application.routes.draw do

  devise_for :users
  resources :games do
    member do
      post :rate
    end
  end
  resources :categories
  resources :comments, only: [:create, :destroy]
  
  root to: "static_pages#home"
  
  match "/help",    to: "static_pages#help"
  match "/about",   to: "static_pages#about"
  match "/contact", to: "static_pages#contact"
  
end
