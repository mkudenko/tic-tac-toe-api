Rails.application.routes.draw do
  scope '/api' do
    jsonapi_resources :games, :only => [:index, :create, :show, :update]
    jsonapi_resources :moves, :only => [:create]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
