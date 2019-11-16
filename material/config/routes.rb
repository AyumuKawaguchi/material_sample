Rails.application.routes.draw do
  
  root to:  "blog#index"
  resources :blog, only: [:index, :show, :create, :new, :destroy, :edit, :update]do
  resources :comments, only: [create]
  end

  resources :user, only: [:show]

end
