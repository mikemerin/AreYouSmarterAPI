Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :quiz, only: [:index, :create, :show]
      resources :question, only: [:index, :create, :show]

      get '/question/create_ruby_question', to: 'question#create_ruby_question'

    end
  end
end
