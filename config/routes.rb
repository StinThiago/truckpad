Rails.application.routes.draw do
  devise_for :users
  #resources :users

  #root "todo_lists#index"
  root :to => "home#index" #Controller#Action

  resources :todo_lists do 
      resources :todo_items do
        member do
        patch :complete
      end
    end
  end

end
