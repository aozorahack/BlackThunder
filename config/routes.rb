Rails.application.routes.draw do
  resources :pages
  resources :original_texts
  resources :cards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'original_texts#index'
end
