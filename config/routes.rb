Blog::Application.routes.draw do
  
  root :to => "articles#index"
  
  devise_for :users
  
  resources :articles do
    resources :comments
  end
  
  resources :tags
  
  match "/sitemap" => "sitemap#index", via: [:get], :as => :sitemap, :defaults => {:format => :xml}

end