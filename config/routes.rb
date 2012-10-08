Machisuke::Application.routes.draw do
  root :to => "top#index"
  get "/start" => "top#start"
  get "/maps/create" => "maps#create"
  get "/maps/:key" => "maps#show"
end
