Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/customers/:id', to: 'customers#show'
      post '/customers/:id/accounts', to: 'customers#create_account'
    end
  end

  namespace :admin do
    get '/customers/:id', to: 'customers#show'
  end
end
