Rails.application.routes.draw do
  resources :comments
  resources :posts
  get '/current_user', to: 'current_user#index'
  get '/subscribers', to: 'current_user#get_subscribers'
  get '/subscribees', to: 'current_user#get_subscribees'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },

  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Defines the root path route ("/")
  # root "articles#index"
end
