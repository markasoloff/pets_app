Rails.application.routes.draw do
  namespace :api do
  get 'pets' => 'pets#index'
  get 'pets/:id' => 'pets#show'
  post 'pets' => 'pets#create'
  patch 'pets/:id' => 'pets#update'
  delete 'pets/:id' => 'pets#destroy'

  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  end
end

