Rails.application.routes.draw do
  resources :robots
  get "/page/:page" => "pages#show"
end
