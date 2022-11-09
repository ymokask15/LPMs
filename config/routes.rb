Rails.application.routes.draw do

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'sessions/new'
  resources :users
  get 'home/top'
  resources :lost_items
  resources :lends
  resources :inquiries do
    collection do
      get :completion
    end
  end

  post'/inquiries_search',to:'inquiries#search'
  post'/',to:'inquiries#search'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
