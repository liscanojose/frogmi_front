Rails.application.routes.draw do
  root 'features#index'
  resources :features, only: [:index] do
    member do
      post '/create_comment', to: 'features#create_comment'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end