Rails.application.routes.draw do
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
