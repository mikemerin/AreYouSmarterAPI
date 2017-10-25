Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :quiz, only: [:index, :create, :show]
      resources :question, only: [:index, :create, :show]

    end
  end
end
