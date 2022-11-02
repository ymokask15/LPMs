Rails.application.routes.draw do
  get 'home/top'
  resources :lost_items
  resources :lends
  resources :inquiries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
