Rails.application.routes.draw do
  root to: 'gardens#index'
  resources :gardens do
    # GET localhost:3000/gardens/:garden_id/plants/new
    resources :plants, only: [ :new, :create ]
  end
  resources :plants, only: :destroy
end
