Rails.application.routes.draw do
  root to: 'gardens#index'
  resources :gardens, only: [ :index, :show ] do
    # GET localhost:3000/gardens/:garden_id/plants/new
    resources :plants, only: [ :new, :create ] do
      resources :plant_tags, only: [:new, :create]
    end
  end
  # DELETE localhost:3000/plants/:id
  resources :plants, only: :destroy
end
