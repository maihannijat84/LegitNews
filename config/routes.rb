Rails.application.routes.draw do
  resources :comments
  resources :users
  resources :articles
  root to: "articles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  # root :to => :articles
  # root :controller => 'static', :action => '/'
end