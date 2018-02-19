Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :ideas, only: [:index, :create, :update, :destroy], constraints: { format: :json }
    end
    namespace :v0 do
      resources :ping, only: [:index], constraints: { format: :json }
    end
  end
end
