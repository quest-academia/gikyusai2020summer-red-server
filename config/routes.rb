Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'health_check', to: "health_check#show"
      resources :quests, only: [:index, :show, :destroy, :update, :create]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
