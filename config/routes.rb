Rails.application.routes.draw do
  
  resources :interest_groups do
    member do
      get :join
      delete :leave
    end
  end
  
  get 'home/index'

  devise_for :users
  root 'home#index'

end
