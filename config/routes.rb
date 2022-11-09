Rails.application.routes.draw do
  get 'home/top'
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
  resources :inquiries
  # post '/search', to: 'home#search'
  # post '/', to: 'home#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
