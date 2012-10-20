Machisuke::Application.routes.draw do
  root :to => "top#index"
  get "/maps/create" => "maps#create"
  get "/maps/:key" => "maps#show"
  post "/maps/create" => "maps#create_api"
end
