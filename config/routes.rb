Machisuke::Application.routes.draw do
  root :to => "top#index"
  get "/create" => "top#create"
  get "/created" => "top#created"
  get "/maps/:key" => "maps#show"
end
