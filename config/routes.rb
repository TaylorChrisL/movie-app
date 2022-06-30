Rails.application.routes.draw do

  get "/actors", controller: "actors", action: "show_actors"

  get "/actor/:id", controller: "actors", action: "show_actor"
end
