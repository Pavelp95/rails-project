Rails.application.routes.draw do
  # get 'project/index'
  # defaults format :json do
  #
  # end
  get '/projects' => 'project#index'
  root 'project#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
