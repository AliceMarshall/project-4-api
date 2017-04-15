Rails.application.routes.draw do
  scope :api do
    resources :items
    resources :categories
    resources :users
    resources :requests
    resources :comments
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end
