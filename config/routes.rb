Rails.application.routes.draw do

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'sessions/new'
  resources :users
  get 'home/top'
  get 'home/login_complete', to: 'home#login_complete'
  resources :lost_items do
    collection do
      get 'search'
      post 'search_list'
      get 'search_list'
      get 'category_list'
      get 'keyword'
     
    end
  end
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
