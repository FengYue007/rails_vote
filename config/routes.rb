Rails.application.routes.draw do
  root "topics#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :topics do
    member do
      post 'upvote'
      post 'downvote'
    end
  end

  get '/about/', to:'topics#about'
end
