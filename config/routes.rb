Rails.application.routes.draw do
  root "messages#index"
  resources :messages do
    member do
          post :edit
        end
   collection do
          post 'search', to: 'messages#search'
        end
      end
end
