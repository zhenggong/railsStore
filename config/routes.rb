Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
    #Image Uploader
  post 'image_file/upload'
  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get  'static_pages/home'
	get  'static_pages/help'
	get  'static_pages/about'
  get  'static_pages/contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
