Fft::Application.routes.draw do
  devise_for :users
  resources :games, :categories
  
  root to: "static_pages#home"
  
  match "/help",    to: "static_pages#help"
  match "/about",   to: "static_pages#about"
  match "/contact", to: "static_pages#contact"
  
end
