Rails.application.routes.draw do
  get 'home/index'
  root'albums#show'
  devise_for :users  do
    resources :albums do
      resources :photos
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
