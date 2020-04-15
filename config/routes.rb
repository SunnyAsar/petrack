Rails.application.routes.draw do

  namespace :api, default: { format: :json } do
    namespace :v1 do
      get 'categories/index'
      get 'categories/create'
      get 'categories/destroy'
      get 'pets/index'
      get 'pets/create'
      get 'pets/show'
      get 'pets/update'
      get 'pets/destroy'
      resources :users
    end
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
