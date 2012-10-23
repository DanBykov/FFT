Fft::Application.routes.draw do
  get "users/new"

  root to: "static_pages#home"
  
  match "/signup", to: "users#new"
  
  match "/help",    to: "static_pages#help"
  match "/about",   to: "static_pages#about"
  match "/contact", to: "static_pages#contact"
  
  match "categories/action",    to: "categories#action"
  match "categories/adventure", to: "categories#adventure"
  match "categories/misc",      to: "categories#misc"
  match "categories/music",     to: "categories#music"
  match "categories/puzzle",    to: "categories#puzzle"
  match "categories/shooting",  to: "categories#shooting"
  match "categories/sports",    to: "categories#sports"
  match "categories/strategy",  to: "categories#strategy"

end
