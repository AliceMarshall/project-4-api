Rails.application.routes.draw do
  scope :api do
    resources :items
    resources :categories
    resources :users
    resources :requests
    resources :comments
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    post 'oauth/github', to: 'oauth#github'
    post 'requestfriend', to: 'users#friend_request'
    put 'acceptfriend', to: 'users#accept_request'
    put 'declinefriend', to: 'users#decline_request'
    put 'removefriend', to: 'users#remove_friend'
    get 'mutualfriends', to: 'users#mutual_friends'
  end
end
