Rails.application.routes.draw do
  resources :addresses do
    collection do
      get :states
    end
  end

  # get '/stimulus_test', to: 'addresses#stimulus'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
