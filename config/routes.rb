Rails.application.routes.draw do
  devise_for :users
  
  #root "todo_lists#index"
  root :to => "home#index" #Controller#Action

  resources :todo_lists do 
      resources :todo_items do
        member do
        patch :complete
      end
    end
  end

  #resources :users
  resources :users, :only => [:show]
end
