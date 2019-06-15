Rails.application.routes.draw do
  root 'features#index'
  resources :features, only: [:index] do
    member do
      post '/create_comment', to: 'features#create_comment'
      get 'comments', to: 'features#comments'
    end
  end
end