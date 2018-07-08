Rails.application.routes.draw do
  get '/welcome', to: 'welcome#index'

  # root 'welcome#new'
  root 'projects#index'
  resources :projects do
    member do
      put 'like', to: 'projects#upvote'
    end
  end

  devise_for :users
end
