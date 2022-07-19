Rails.application.routes.draw do
  
  resources :actors, :movies, defaults: { format: :json }

  post "/users" => "users#create", default: { format: :json}
  post "/sessions" => "sessions#create"

  post "/movie_genres" => "movie_genres#create", default: { format: :json }
end
